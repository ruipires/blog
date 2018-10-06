---
layout: post
status: publish
published: true
title: Battle of the build systems
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 19
wordpress_url: http://www.sennin.co/?p=19
date: '2012-05-29 14:45:25 +0000'
date_gmt: '2012-05-29 14:45:25 +0000'
categories:
- tools
tags: []
comments:
- id: 16
  author: Sennin &raquo; Battle of the Build Systems &#8211; GNU Make
  author_email: ''
  author_url: http://www.sennin.pt/?p=192
  date: '2012-05-30 23:49:16 +0000'
  date_gmt: '2012-05-30 23:49:16 +0000'
  content: "[...] Battle of the Build Systems &#8211; GNU Make  Posted by rui on May
    30, 2012 in tools | No Comments [...]"
- id: 1899
  author: Sennin &raquo; Native client SDL example
  author_email: ''
  author_url: http://www.sennin.pt/2012/06/16/native-client-sdl-example/
  date: '2012-06-16 22:57:52 +0000'
  date_gmt: '2012-06-16 22:57:52 +0000'
  content: "[...] in the nacl sdk examples. I didn&#8217;t like how it turned out
    (the Makefile), but I&#8217;m still looking for a new build system to adopt. Make
    looks more than OK for a simple [...]"
- id: 5595
  author: Sennin &raquo; Taking CMake for a spin
  author_email: ''
  author_url: http://www.sennin.pt/2014/03/23/cmake/
  date: '2014-03-23 17:14:33 +0000'
  date_gmt: '2014-03-23 17:14:33 +0000'
  content: "[&#8230;] page on the battle of build systems, I am now moving on to CMake,
    after giving SCons a [&#8230;]"
---
<p>I wonder if this whole post is just me being too picky with something so often dismissed as an after thought.</p>
<h1>&nbsp;What build system to use?</h1><br />
<p>There certainly are no shortage of choices, and that abundance tends to make finding the right answer though!</p>
<p>This&nbsp;dilemma&nbsp;makes me loose more time than I'd wish pondering about what build system to use on any new non trivial project.</p>
<h1>What I'm looking for</h1><br />
<p>These are the characteristics I normally look for in a build system:</p>
<p><strong>Cross platform</strong></p>
<p>The tool should be able to run on multiple operating systems. Or at the very least support Linux and Windows. Mac OS support here is, for me, still only a plus, since I'm not using that platform (yet).</p>
<p><strong>Support cross compilation</strong></p>
<p>Cross compilation is when you compile a binary for a platform or cpu architecture different from the one you are currently using on your development machine.</p>
<p>A great example is when you want to compile a windows binary, using mingw (a gcc port for windows) running under linux.</p>
<p>If the notion of multiple compilers is supported by the build system, then there is a big possibility the build tool will also support cross-compilation smoothly.</p>
<p><strong>Make dependency management hassle free</strong></p>
<p>This is a problem, specially for large projects in C++, where the module system is, sadly, aching from its reliance on the C preprocessor.</p>
<p>Some tools call the compiler and ask for a mapping between source files and their dependencies (make and gcc can cooperate this way), while others support parsers that extract this information directly from the source files.</p>
<p>Either way, these dependencies should&nbsp;preferably&nbsp;be calculated automatically, and fast enough so that they don't add too much time to a simple check, where little or no changes were made to the source code files (very common if you are doing small incremental changes to your code).</p>
<p><strong>Language agnostic</strong></p>
<p>The build system should support multiple programming languages, at least for dependency calculations.</p>
<p>While I personally favor C++ for my projects, I tend to use Java a lot, and also like to learn new languages.</p>
<p>Having to learn a new language can be fun, but also takes its mental toll, as you try to map existing concepts into a new (possibly similar) syntax, understand how to use new language features elegantly, and from time to time, learn a whole new programming paradigm. Having to learn all this while having to switch to a new build system, with (most likely) new syntax of its own, just seems like unneeded work.</p>
<p><strong>Support custom pre and post processors</strong></p>
<p>Some libraries rely on extra pre or post processors running on the source code, or the produced binaries.</p>
<p>From the top of my head, the best examples are:</p>
<p>Qt , that alters the source code you write to add the notion of "slot:" and "signal:" sections to a C++ class (adding to the standard "public:", "protected:" and "private:" sections).</p>
<p>GWT that I believe acts on the byte code produced by the java compiler to change parts of the system to pure javascript, that will run natively on the browser.</p>
<p><strong>Play well with other make systems</strong></p>
<p>There is no reasonable way to avoid using at least one external project as an external dependency (library). With this abundance of build systems, chances are, you will not share the same build system with your external dependencies.</p>
<p>While for most stable libraries, using a binary distribution can be enough, in some cases you will want to be using a cutting edge development version.</p>
<p>While this point is not important as the above, I would like to find a tool that makes it easy for me to clean the whole project and rebuild it completely with one or two simple commands.</p>
<p><strong>Integrate well with both an IDE and the command line</strong></p>
<p>If you rely on an IDE for your build system, you typically loose the ability to easily do automated builds on a server (I'm thinking about jenkins/hudson for continuous integration for example).</p>
<p>I like to be able to use Eclipse, and command line / Vim&nbsp;intermittently&nbsp;for the same project, and under windows, I will likely need Visual Studio at some point and XCode under MacOS.</p>
<p>The build tool should make my life easier by integrating or cooperating smoothly with the IDE of choice at the time.</p>
<p><strong>Should be actively developed and supported</strong></p>
<p>It is normal that with such an abundance of choice, some tools will be more actively used, supported and developed than others.</p>
<p>Choosing one that is updated regularly seems like a good idea to me.</p>
<h1>What's available</h1>
<ul>
<li>GNU Make -&nbsp;<a href="http://www.gnu.org/software/make/">http://www.gnu.org/software/make/</a></li>
<li>CMake -&nbsp;<a href="http://www.cmake.org/">http://www.cmake.org/</a></li>
<li>GNU Autoconf / Automake (autotools) -&nbsp;<a href="http://www.gnu.org/software/automake/">http://www.gnu.org/software/automake/</a></li>
<li>Apache Ant -&nbsp;<a href="http://ant.apache.org/">http://ant.apache.org/</a></li>
<li>Apache Buildr -&nbsp;<a href="http://buildr.apache.org/">http://buildr.apache.org/</a></li>
<li>Apache Ivy -&nbsp;<a href="http://ant.apache.org/ivy/">http://ant.apache.org/ivy/</a></li>
<li>Maven -&nbsp;<a href="http://maven.apache.org/">http://maven.apache.org/</a></li>
<li>Boost.Build -&nbsp;<a href="http://www.boost.org/boost-build2/">http://www.boost.org/boost-build2/</a></li>
<li>Scons -&nbsp;<a href="http://www.scons.org/">http://www.scons.org/</a></li>
<li>A-A-P -&nbsp;<a href="http://www.a-a-p.org/">http://www.a-a-p.org/</a></li>
<li>Ninja -&nbsp;<a href="http://neugierig.org/software/chromium/notes/2011/02/ninja.html">http://neugierig.org/software/chromium/notes/2011/02/ninja.html</a></li>
<li>WAF -&nbsp;<a href="http://code.google.com/p/waf/">http://code.google.com/p/waf/</a></li><br />
</ul><br />
<p>I have tried to list the tools I knew, plus a few I recommended or found out while looking for better alternatives.</p>
<p>Have I forgotten something? Any suggestions?</p>
<p>In future posts I will go over these tools and try to decide on one that suits my needs.</p>
