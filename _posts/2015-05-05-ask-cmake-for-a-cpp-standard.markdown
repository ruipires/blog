---
layout: post
status: publish
published: true
title: A Better way to ask cmake for a C++ standard
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "<p>A while back I wrote a post about <a href=\"http://www.sennin.pt/2015/01/19/setting-the-cpp-standard-using-cmake/\">how
  to set the c++ standard with cmake</a>.</p><p>It revolved around setting
  the <a href=\"http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD.html#cxx-standard\">CXX_STANDARD</a>
  and <br/>optionally <a href=\"http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD_REQUIRED.html#cxx-standard-required\">CXX_STANDARD_REQUIRED</a> properties.</p><p>I
  have since found this technique does not work as nicely as I would like with Visual
  Studio.</p>"
wordpress_id: 606
wordpress_url: http://www.sennin.pt/?p=606
date: '2015-05-05 21:29:31 +0000'
date_gmt: '2015-05-05 21:29:31 +0000'
categories:
- tools
- c++
- cmake
tags: [tools, c++, cmake]
banner: '/assets/2015/cash_register.png'
cover: '/assets/2015/cover/cash_register.jpg'
cover_url: https://www.flickr.com/photos/andrewbain/5577254902/
cover_author_name: Taber Andrew Bain
cover_author_url: https://www.flickr.com/photos/andrewbain/
cover_license: CC BY-NC 2.0
cover_license_url: https://creativecommons.org/licenses/by-nc/2.0/
comments:
- id: 5722
  author: Sennin &raquo; Setting the c++ standard using cmake
  author_email: ''
  author_url: http://www.sennin.pt/2015/01/19/setting-the-cpp-standard-using-cmake/
  date: '2015-05-05 21:30:58 +0000'
  date_gmt: '2015-05-05 21:30:58 +0000'
  content: "[&#8230;] Note: I have written an update to this post here. [&#8230;]"
---
<p>A while back I wrote a post about <a href="http://www.sennin.pt/2015/01/19/setting-the-cpp-standard-using-cmake/">how to set the c++ standard with cmake</a>.</p>
<p>It revolved around&nbsp;setting the&nbsp;<a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD.html#cxx-standard">CXX_STANDARD</a> and optionally&nbsp;<a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD_REQUIRED.html#cxx-standard-required">CXX_STANDARD_REQUIRED</a>&nbsp;properties.</p>
<p>I have since found this technique does not work as nicely as I would like with Visual Studio.<a id="more"></a><a id="more-606"></a></p>
<p>Setting CXX_STANDARD is just a "soft" request, where we express our wish that that particular&nbsp;standard should be used. It is just a request, and if CMake has no way to fulfil it with the toolset being used, it will still proceed and we might fail horribly when we actually try to compile anything.</p>
<p>With CXX_STANDARD_REQUIRED on the other hand, we are expressing that the specified standard <strong>must</strong>&nbsp;be used and be&nbsp;<strong>fully</strong> supported by the compiler.</p>
<p>There are two issues with using this technique with Visual Studio:</p>
<p>1 - It (and quite possibly other compilers) <a href="https://msdn.microsoft.com/en-us/library/hh567368.aspx">does not support the entirety of the C++11 standard yet</a>. This will force CMake to fail, because it cannot fulfil our request.</p>
<p>2 - Visual Studio has no flag to select what standard to use (unlike gcc and clang). This means that if we wanted to keep our code frozen in C++98/C++03 mode, there is just no way to do it. Also, we are always on their "latest" supported version, there is no going back.</p>
<h1>So what can we do?</h1><br />
We can use CMake's <a href="http://www.cmake.org/cmake/help/v3.2/command/target_compile_features.html">target_compile_features</a>, were we can be more fine grained and specify what language features we want to use.
<p>There is a <a href="http://www.cmake.org/cmake/help/v3.2/prop_gbl/CMAKE_CXX_KNOWN_FEATURES.html#prop_gbl:CMAKE_CXX_KNOWN_FEATURES">list of know feature you can choose from</a>, and CMake will make sure they are all available to you, or it will fail when configuring your project. Note that it may not add any compilation flag, if it does not need to.</p>
<p>A special thank you to <a href="http://stackoverflow.com/users/2428389/steveire">steveire</a> on Stack Overflow that helped me get this working with my <a href="https://www.biicode.com/sennin/deckbox_loader">biicode block</a>&nbsp;by <a href="http://stackoverflow.com/questions/30042047/using-cmakes-target-compile-features-with-biicode">answering my question</a>.</p>
