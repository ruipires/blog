---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Placement new operator in C++
author: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 224
wordpress_url: http://www.sennin.pt/?p=224
date: '2012-11-20 12:25:54 +0000'
date_gmt: '2012-11-20 12:25:54 +0000'
categories:
- articles
- c++
tags: [articles, c++]
comments: []
---
<p>It is no secret that I am a big fan of C++. I love learning new ways to make my code more elegant and performant.</p>
<p>I work in embedded systems, and have done so in C++ for a few years, although now I am working on a beefier (but still embedded) system running java.</p>
<p>But one thing you will probably run into when programming for embedded systems, if you are using C++ is that you will most likely have some kind of memory map, or an object you would like to have allocated in a specific location.</p>
<p>This was lukely not overlooked by C++, but is normally an obscure use case, so I never got to learn it.</p>
<p>This <a href="http://www.drdobbs.com/cpp/calling-constructors-with-placement-new/232901023">article</a> in Dr. Dobb's presents the placement new operator (a way to redefine how "new" works for your object), enabling you to do neat stuff with it, like passing an address as parameter.</p>
<p>Congratulations to <a href="http://www.dansaks.com">Dan Saks</a> on this highly recomended article.</p>
