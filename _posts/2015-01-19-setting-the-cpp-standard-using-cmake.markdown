---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Setting the c++ standard using cmake
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "<p><strong>Note</strong>: I have written an update to this post <a href=\"http://www.sennin.pt/2015/05/05/ask-cmake-for-a-cpp-standard/\">here</a>.</p><p>I'm
  currently trying to convert an existing code base from Makefiles to CMake. I'm doing
  this in order to showcase the advantages we can have by switching to CMake. Its
  an unofficial conversion, so I am not changing anything in the official repo. I
  plan on just having a bunch of CMakeLists.txt that I will then use a custom script
  to copy over the original source tree.</p>"
wordpress_id: 512
wordpress_url: http://www.sennin.pt/?p=512
date: '2015-01-19 23:37:00 +0000'
date_gmt: '2015-01-19 23:37:00 +0000'
categories:
- tools
- c++
- cmake
tags: [tools, c++, cmake]
banner: '/assets/2015/speed-telegraph.png'
comments:
- id: 5687
  author: Joao Figueiredo
  author_email: jfigueiredo@runbox.com
  author_url: http://log.egoscape.net
  date: '2015-01-20 22:23:27 +0000'
  date_gmt: '2015-01-20 22:23:27 +0000'
  content: "If you really really want to build in Windows, beware VS uses the VC++
    compiler, but can be configured to use Intels' C++ compiler (which has the -std
    option - see https://software.intel.com/en-us/articles/iso-iec-standards-language-conformance-for-intel-c-compiler).\r\n\r\nAlso
    check https://software.intel.com/en-us/c-compilers for details
    on some interesting optimizations the Intel compiler performs versus GCC (though
    it's best conforming to GCC when cross-compiling to embedded).\r\n\r\nIt's been
    a few years since I've messed with VS, but it was the best C++ IDE I've worked
    with so far, IMHO."
- id: 5688
  author: Rui Pires
  author_email: rui@sennin.pt
  author_url: ''
  date: '2015-01-21 19:37:08 +0000'
  date_gmt: '2015-01-21 19:37:08 +0000'
  content: Thank you Jo&atilde;o, that might be worth looking into, but I'll have
    to take some time to check what the licensing looks like.
- id: 5721
  author: Sennin &raquo; A Better way to ask cmake for a C++ standard
  author_email: ''
  author_url: http://www.sennin.pt/2015/05/05/ask-cmake-for-a-cpp-standard/
  date: '2015-05-05 21:29:34 +0000'
  date_gmt: '2015-05-05 21:29:34 +0000'
  content: "[&#8230;] A while back I wrote a post about how to set the c++ standard
    with cmake. [&#8230;]"
---
<p><strong>Note</strong>: I have written an update to this post <a href="{{ site.baseurl }}/2015/05/05/ask-cmake-for-a-cpp-standard">here</a>.</p>
<p>I'm currently trying to convert an existing code base from Makefiles to CMake. I'm doing this in order to showcase the advantages we can have by switching to CMake. Its an unofficial conversion, so I am not changing anything in the official repo. I plan on just having a bunch of CMakeLists.txt that I will then use a custom script to copy over the original source tree.</p>
<p><a id="more"></a><a id="more-512"></a>The current code base is using C++98. We plan on changing this, but we need to fight our battles one at a time.</p>
<p>Apparently shared_ptr was changed with C++11 to avoid explicit uses of operator bool. This <a href="http://stackoverflow.com/questions/7580009/gcc-error-cannot-convert-const-shared-ptr-to-bool-in-return">stackoverflow post</a> explains the issue.</p>
<p>Since I cannot change the code, I need a way to choose which C++ standard the compiler should&nbsp;conform to.</p>
<p>I am also trying to showcase the CMake Visual Studio 12/2013 generator, but our project is currently compiling using a custom flavour of GCC. As such, I wanted to avoid having to fiddle with compiler specific flags in the CMakeLists.txt files, if at all possible.</p>
<p>Luckily, the <a href="http://www.kitware.com/blog/home/post/812">recently released</a> CMake 3.1 added support for this in the form of the&nbsp;<a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD.html#cxx-standard">CXX_STANDARD</a> and <a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD_REQUIRED.html#cxx-standard-required">CXX_STANDARD_REQUIRED</a> properties.</p>
<p>All we need to do is set those properties for the targets we want. For example, considering we have a target named module1:</p>
<pre># set c++ standard to c++98<br />
set_property(TARGET module1 PROPERTY CXX_STANDARD 98)<br />
# ask for c++98 to be required (and not just a best-effort request)<br />
set_property(TARGET module1 PROPERTY CXX_STANDARD_REQUIRED ON)<br />
</pre><br />
But when generating the build/project files for Visual Studio, we get this error message:</p>
<p><img src="{{ site.baseurl }}/assets/2015/cmake_gui_1.png" width="600" height="426" /></a></p>
<p>&nbsp;</p>
<p>Apparently either the CMake folks don't know what flags to set in Visual Studio to force C++98 compliance (I highly doubt that), or there is no way to ask Visual Studio to conform to a particular standard version.</p>
<p>There is only going forward, no looking back I guess.</p>
<p>I find it sad Visual Studio does not have an equivalent to GCC and Clang's "--std=" flag.</p>
<p>Maybe this will change with <a href="http://www.visualstudio.com/pt-pt/news/vs2015-preview-vs">Visual Studio 2015</a> ? I still have to take the technical preview for a spin ;)</p>
