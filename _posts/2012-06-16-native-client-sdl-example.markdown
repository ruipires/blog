---
layout: post
status: publish
published: true
title: Native client SDL example
author:
  display_name: Rui Pires
  login: rui
  email: rui@sennin.pt
  url: http://www.sennin.pt
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 212
wordpress_url: http://www.sennin.pt/?p=212
date: '2012-06-16 22:57:45 +0000'
date_gmt: '2012-06-16 22:57:45 +0000'
categories:
- examples
- c++
tags:
- nacl
- naclports
- sdl
comments:
- id: 5515
  author: coldev
  author_email: infocoldev@gmail.com
  author_url: http://coldev.blogspot.com
  date: '2012-09-06 06:01:16 +0000'
  date_gmt: '2012-09-06 06:01:16 +0000'
  content: "helllo is possible that u share a full sdl source NACL\r\nand includes
    , \r\n\r\nwe try compile and build in win32 and is impossible\r\n\r\nbuild environment
    and patch in windows is a nightmare\r\nthen u can share us the SDL armed .. ready
    4 use..?\r\n\r\nthx 4 u time\r\n\r\n\r\nColombian Developers.."
- id: 5516
  author: rui
  author_email: rui@sennin.pt
  author_url: ''
  date: '2012-11-20 12:09:41 +0000'
  date_gmt: '2012-11-20 12:09:41 +0000'
  content: Hi coldev, I am currently developing in Linux and in Mac OS X. I plan on
    keeping my projects compiling on windows. I will probably be using mingw (http://www.mingw.org/)
    as that will be easier for me.
- id: 5519
  author: jargo
  author_email: jargotw@gmail.com
  author_url: ''
  date: '2013-05-13 08:41:19 +0000'
  date_gmt: '2013-05-13 08:41:19 +0000'
  content: "You can try it, copy make.bat from \"hello_tutorial\" folder and run make.\r\n\r\n(\"hell_tutorial\"
    can download from https://developers.google.com/native-client/devguide/hello_tutorial.zip)\r\n\r\nIt
    works fine for me."
- id: 5622
  author: Felipe
  author_email: felipellrocha@gmail.com
  author_url: ''
  date: '2014-05-17 00:02:07 +0000'
  date_gmt: '2014-05-17 00:02:07 +0000'
  content: How would you change this to make it work with pnacl, and pepper 34?
- id: 5659
  author: Rui Pires
  author_email: rui@sennin.pt
  author_url: ''
  date: '2014-08-14 09:46:22 +0000'
  date_gmt: '2014-08-14 09:46:22 +0000'
  content: |-
    I'm not really following NAcL at the moment, so I'm not sure what would need to be adapted to make it up to date.
    I'll try to get around and test it. If you happen to do it yourself, or find out what needs to be done, please let me know.
---
<p>I have been looking into <a href="https://developers.google.com/native-client/">chrome's native client</a>&nbsp;(NaCl).</p>
<p>My goal is to be able to use it as an adaptation layer to run code on the browser, while keeping it as portable as possible.</p>
<p>I want to do some game development with it, so the fact that <a href="http://www.libsdl.org/">SDL</a> was ported to it &nbsp;(<a href="http://code.google.com/p/naclports/">naclports</a>) seemed extremely promising. <a href="http://www.libsdl.org/">SDL</a> supports OpenGL and Audio context creation and input management.</p>
<p>Looks like that's just what I was looking for.</p>
<p>After going through the <a href="https://developers.google.com/native-client/devguide/tutorial">getting started tutorial</a> and reading some of the <a href="https://developers.google.com/native-client/sdk/examples">examples</a>, it was time to get <a href="http://www.libsdl.org/">SDL</a> working.</p>
<p>I did have to make sure the nacl tools were working in my fresh 64 bit VM, since they are 32 bits binaries. I'm running ubuntu, so all I needed to do was install 32 bit libraries by running:</p>
<pre>sudo apt-get install ia32-libs</pre><br />
Next I had to <a href="http://code.google.com/p/naclports/wiki/HowTo_Checkout">check-out</a> and install naclports and <a href="http://code.google.com/p/naclports/wiki/InstallingSDL">compile the SDL port</a>. This was relatively easy to do.</p>
<p>Now came the tricky part.</p>
<p>The naclports are a collection of patches to specific versions of the original projects. For SDL the port is for version 1.2.14.</p>
<p>I followed the documentation on the nacl site on <a href="https://developers.google.com/native-client/community/porting/SDLgames">how to port SDL games</a>.&nbsp;I found this page to be a bit lacking in details, but I managed to fill in the blanks and get an example to compile.</p>
<p>The problem was ... the code wrote based on that page was compiling, but didn't actually produce anything visible on the browser apart from a blank NaCl element. No GL context, not nice graphics ;)</p>
<p>No problem I though, I'll just look at the patched SDL source and read the documentation for the new/adapter methods there. No luck here, there was no documentation specific to the port.</p>
<p>Ok, I though, there has to be something, somewhere. Just google it!. I found an <a href="https://github.com/eugenis/sdltest">example</a>&nbsp;on github from a <a href="https://github.com/eugenis">google developer</a> that I saw in the svn log of the SDL port to naclports. Bingo! Thank you <a href="https://github.com/eugenis">Evgeniy Stepanov (eugenis)</a> for porting SDL, doing an example and uploading it to github!</p>
<p>The example was not compiling, it seemed to be for an old version of the nacl SDK.</p>
<p>Humm, according to the source code this is under a BSD license, and it is on github... here's my first chance to contribute something back to the NaCl comunity.</p>
<p>I <a href="https://github.com/ruipires/sdltest">forked</a> the example in github and updated it to run on pepper_19 (the latest stable pepper release at the moment).</p>
<p>I changed the Makefile to compile both 64 and 32 bit nexes, based on the Makefiles in the nacl sdk examples. I didn't like how it turned out (the Makefile), but I'm still <a title="Battle of the build systems" href="http://www.sennin.pt/2012/05/29/battle-of-the-build-systems/">looking for a new build system to adopt</a>. Make looks more than OK for a simple example.</p>
<p>You can find the <a href="https://github.com/ruipires/sdltest">fork here</a>. And it works!</p>
<p>Just check out and run:</p>
<pre>make</pre></p>
<pre>./httpd.py</pre></p>
<pre>google-chrome --enable-nacl http://localhost:5103/sdltest.html</pre><br />
(I'm assuming you are running linux)</p>
<p>You should see something like this:</p>
<p><a href="http://www.sennin.pt/wp-content/uploads/2012/06/nacl-sdl-example.png"><img class="alignnone size-full wp-image-216" title="nacl sdl example" src="http://www.sennin.pt/wp-content/uploads/2012/06/nacl-sdl-example.png" alt="nacl sdl example" width="799" height="652" /></a></p>
<p>&nbsp;</p>
<p>Enjoy ;)</p>
<p>&nbsp;</p>
