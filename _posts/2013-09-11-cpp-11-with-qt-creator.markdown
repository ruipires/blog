---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Enabling C++11 in Qt Creator
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 376
wordpress_url: http://www.sennin.pt/?p=376
date: '2013-09-11 01:38:09 +0000'
date_gmt: '2013-09-11 01:38:09 +0000'
categories:
- tools
- examples
- c++
tags: [tools, c++, examples]
comments:
- id: 5545
  author: Tim
  author_email: shadowdrak@gmail.com
  author_url: ''
  date: '2013-11-12 19:43:44 +0000'
  date_gmt: '2013-11-12 19:43:44 +0000'
  content: All I had to do to get it working for me was to add a line CONFIG += c++11
    to my project file. It did everything else for me automatically. The C++1y mode
    wasn't as easy, unfortunately.
- id: 5571
  author: Rui
  author_email: ruidpires@gmail.com
  author_url: ''
  date: '2014-02-08 14:29:45 +0000'
  date_gmt: '2014-02-08 14:29:45 +0000'
  content: |-
    Hi Tim,

    Well, they have been updating Qt Creator quite a bit lately. Maybe this was made easier in later versions ?

    I will try to use your simpler version and see if it works for me.
---
<p>I'm trying <a href="http://qt-project.org/downloads#qt-creator">Qt Creator</a> out, and had some dificulty figuring out how to enable <a href="http://en.wikipedia.org/wiki/C%2B%2B11">C++11</a> support.<a href="http://qt-project.org/downloads#qt-creator"><img class="alignright size-full wp-image-377" alt="qt_creator" src="{{ site.baseurl }}/assets/2013/qt_creator.png" width="81" height="68" /></a></p>
<p>After all, the best way to lear how to use the new features is to, well, to use them (and hopefully learn from the mistakes I will make).</p>
<p>After some research, and a couple of <a href="http://qt-project.org/forums/viewthread/25355">forum posts</a> and <a href="http://stackoverflow.com/questions/12264824/how-to-configure-qtcreator-to-work-with-c11">stackoverflow answers</a>, I finally managed to get it working.</p>
<p>It was simple, really. At least after knowing what had to be done.</p>
<p>Here's how you can do it.</p>
<p>Make sure your .pro file contains the following options:</p>
<pre>LIBS += -stdlib=libc++<br />
QMAKE_CXXFLAGS += -stdlib=libc++<br />
QMAKE_CXXFLAGS += -std=c++11</pre><br />
And now for the "tricky" part.My current development machine is a Mac.Also, Clang needs libc++ to support c++11. Apparently that requires Mac OS X 10.7 or later. And Qt creator was insisting in passing the -mmacosx-version-min=10.6 flag to the compiler.To override it, also add the following to the .pro file:
<pre>QMAKE_CXXFLAGS += -mmacosx-version-min=10.7<br />
QMAKE_LFLAGS += -mmacosx-version-min=10.7<br />
QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.7</pre>
<p>And that should do it!</p>
