---
layout: post
status: publish
published: true
title: GDB TUI mode
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "It's funny how sometimes you use a tool for years, but still find out new
  functionality once in a while.\r\n\r\n"
wordpress_id: 452
wordpress_url: http://www.sennin.pt/?p=452
date: '2014-08-18 13:54:52 +0000'
date_gmt: '2014-08-18 13:54:52 +0000'
categories:
- tools
tags: []
comments: []
---
<p>It's funny how sometimes you use a tool for years, but still find out new functionality once in a while.</p>
<p><a id="more"></a><a id="more-452"></a>I am no <em>gdb</em> expert. In fact, I prefer to produce my code as clean as possible, and avoid <em>gdb</em> altogther.</p>
<p>But sometimes ... there is no escaping those though debugging sessions.</p>
<p>I work in embedded software, so debugging tends to be done with plain old <em>gdb</em>+<em>gdbserver</em>.</p>
<p>I would like to use <em>QtCreator's</em> remote debugging features, but they require <em>gdb</em>/<em>gdbserver</em> to be compiled with python support.</p>
<p>And guess what? I don't have that at the moment.</p>
<p>But I found an <a href="http://stackoverflow.com/questions/4362581/get-gdb-to-do-a-list-after-every-step">answer on <em>stackoverflow</em></a> that mentioned <a href="https://sourceware.org/gdb/onlinedocs/gdb/TUI-Overview.html#TUI-Overview"><em>gdb's </em>TUI&nbsp;mode</a>.</p>
<p>TUI stands for Text User Interface, and is a sort of <em>ncurses</em> UI built right into vanilla <em>gdb</em>.</p>
<p>You access it by pressing C-x A. And <em>voila</em>&nbsp;: you can now debug while seeing the code you are stepping through.</p>
<p><a href="http://commons.wikimedia.org/wiki/File:GDB_TUI.png"><img title="gdb in TUI mode" src="http://upload.wikimedia.org/wikipedia/commons/4/47/GDB_TUI.png" alt="" width="424" height="249" /></a> <br />(image from wikimedia commons)</p>
