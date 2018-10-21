---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Battle of the Build Systems - GNU Make
author: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 192
wordpress_url: http://www.sennin.pt/?p=192
date: '2012-05-30 23:49:14 +0000'
date_gmt: '2012-05-30 23:49:14 +0000'
categories:
- tools
tags: [tools]
comments: []
---
<p style="text-align: center;"><img title="yes, it's a stupid reference, but I like the eye candy. It's also the only build system I can remember seeing in a movie." src="{{ site.baseurl }}/assets/2012/swordfish.jpg" alt="yes, it's a stupid reference, but I like the eye candy. It's also the only build system I can remember seeing in a movie." width="652" height="315" /></p><br />
<p>Following my <a title="Battle of the build systems" href="http://www.sennin.pt/?p=19">previous post</a> where I described what I was looking for in a build system, here I take a look at GNU make, and why I'm not using it.</p>
<p>&nbsp;</p>
<p><strong>GNU Make</strong></p>
<p>http://www.gnu.org/software/make/</p>
<p>&nbsp;</p>
<p>The first build system I learned, just as I was learning C.</p>
<p>Make is a capable system for a lot of projects, but there are also a lot of <a href="http://freecode.com/articles/what-is-wrong-with-make">documented</a>&nbsp;<a href="http://www.conifersystems.com/whitepapers/gnu-make/">flaws</a>.</p>
<p>If care (and work and time) is taken, it really is possible to do a lot with it.</p>
<p>For example, dependency management can be eased by <a href="http://gcc.gnu.org/onlinedocs/gcc/Preprocessor-Options.html">cooperating </a>with gcc , but you will have to regenerate the dependency map from time to time.</p>
<p>Portability wise, make is probably the first tool to be ported to a new platform after gcc, but sadly, with some small variations in make's syntax that compromise portability (GNU make vs BSD make vs microsoft make ...). Also, since your are expressing your project using rules and targets defined by native commands you also need to take great care to maintain your makefile relatively portable.</p>
<p>Make would meet most of my requirements for a build system, at the expense of my time, spent crafting clever makefiles and later debugging them.</p>
<p>Had these problems not existed, I would probably not be looking for an alternative in the first place.</p>
