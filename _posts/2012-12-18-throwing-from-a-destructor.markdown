---
layout: post
status: publish
published: true
title: Throwing from a destructor
author:
  display_name: Rui Pires
  login: rui
  email: rui@sennin.pt
  url: http://www.sennin.pt
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 338
wordpress_url: http://www.sennin.pt/?p=338
date: '2012-12-18 17:12:23 +0000'
date_gmt: '2012-12-18 17:12:23 +0000'
categories:
- articles
- c++
tags:
- design
comments: []
---
<p>I just read a very interesting <a href="http://cpp-next.com/archive/2012/08/evil-or-just-misunderstood/">article</a> about throwing exceptions from destructors,&nbsp;by Jon Kalb and&nbsp;<a href="http://daveabrahams.com/" rel="external">Dave Abrahams</a>.</p>
<p>The article itself is nicely written and goes through some of the exception-safe advantages (for me <a href="http://en.wikipedia.org/wiki/RAII">RAII</a> is by far the best reason to write solid exception-safe code) and explains why throwing an exception from a destructor <span style="text-decoration: underline;">might</span> get you in trouble.</p>
<p>But the article's comments are the part where things get interesting. Several different interesting points of view are expressed there, as well as some comments about future possible changes to the standard. Some comments &nbsp;just challenge the (dogma of the) currently accepted good practices.</p>
<p>I find it great to question some of the dogmas from time to time. Helps us keep things going in the right direction.</p>
<p>If you are interested in C++ programming, I think you really should read the <a href="http://cpp-next.com/archive/2012/08/evil-or-just-misunderstood/">article and comments</a>.</p>
