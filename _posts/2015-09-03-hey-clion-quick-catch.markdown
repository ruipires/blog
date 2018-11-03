---
layout: post
status: publish
published: true
title: 'Hey CLion, quick: Catch!'
author: rui
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt


navigation: True
class: post-template
subclass: 'post'


excerpt: "<p>&nbsp;</p><p>I am glad I finally made up my mind and bought a personal
  license for <a href=\"https://www.jetbrains.com/clion/\">CLion</a>.</p><p>And
  just one day after <a href=\"http://blog.jetbrains.com/clion/2015/08/clion-1-1-released/\">CLion
  1.1 came out</a>.</p><p>A few episodes of <a href=\"http://cppcast.com/\">CppCast</a>
  had left me with some interesting sounding projects I had meant to take a look at.</p><p><a
  href=\"http://cppcast.com/2015/05/phil-nash/\">One of them</a>
  was <a href=\"https://github.com/philsquared/Catch\">Catch</a>,
  with its promise of low setup cost, compared to other testing frameworks.</p>"
wordpress_id: 638
wordpress_url: http://www.sennin.pt/?p=638
date: '2015-09-03 18:30:25 +0000'
date_gmt: '2015-09-03 18:30:25 +0000'
categories:
- c++
- tools
tags: [c++, tools]
banner: '/assets/2015/sea_lion.png'

cover: '/assets/2015/cover/sea_lion.jpg'
cover_url: https://www.flickr.com/photos/ekilby/18542881393/in/photolist-ufz7BB-dby5Fr-dbz92L-dbz7ov-965BLx-96ox67-96jZan-a4GLMh-96oeFq-pT92XA-ecWBVU-bDgXGE-bqY5Ay-9YEWjX-bSbDwa-9YHR5y-9YEWfv-aPkmcV-bzf2KB-9YEWiM-dbz9cC-7t3Cpw-bC39Zj-69xJmL-nc98r8-fbCMgN-na6Gww-dVigAk-dVoT1U-oh41hw-fkyXcg-bVvLRL-o2oCPv-fD6Xt8-ayDv7q-a2N1Zr
cover_author_name: Eric Kilby
cover_author_url: https://www.flickr.com/photos/ekilby/
cover_license: CC BY-SA 2.0
cover_license_url: https://creativecommons.org/licenses/by-sa/2.0/

comments:
- id: 5824
  author: Phil Nash
  author_email: sennin@philnash.me
  author_url: http://levelofindirection.com
  date: '2015-09-03 21:26:04 +0000'
  date_gmt: '2015-09-03 21:26:04 +0000'
  content: "Nice write up. Thanks for trying Catch.\r\n\r\nThe problem you're seeing
    with the TEST_CASE macro has an open issue in the Catch tracker here: https://github.com/philsquared/Catch/issues/484
    - which has links to a couple of relevant CLion issue reports. The first one has
    a few people weighing in to add voice to how problematic it is - so the more people
    report in there the more likely it will be dealt with sooner rather than later!\r\n\r\nRegards,\r\n\r\n[)o\r\nIhIL.."
- id: 5825
  author: Bj&ouml;rn Fahller
  author_email: bjorn@fahller.se
  author_url: ''
  date: '2015-09-03 21:26:25 +0000'
  date_gmt: '2015-09-03 21:26:25 +0000'
  content: "#1 will almost certainly be fixed when https://youtrack.jetbrains.com/issue/CPP-2801
    is fixed. This'll help with pretty much all C++ unit test frameworks and similar
    tools, not just Catch (I have a vested interest too with https://github.com/rollbear/trompeloeil
    mocking framework.)\r\n\r\nI presume that once #1 is done, #2 would go as well.\r\n\r\nThis
    leaves #3."
---
<p>I am glad I finally made up my mind and bought a personal license for <a href="https://www.jetbrains.com/clion/">CLion</a>.</p>
<p>And just one day after <a href="http://blog.jetbrains.com/clion/2015/08/clion-1-1-released/">CLion 1.1 came out</a>.</p>
<p>A few episodes of <a href="http://cppcast.com/">CppCast</a> had left me with some interesting sounding projects I had meant to take a look at.</p>
<p><a href="http://cppcast.com/2015/05/phil-nash/">One of them</a> was <a href="https://github.com/philsquared/Catch">Catch</a>, with its promise of low setup cost, compared to other testing frameworks.<a id="more"></a><a id="more-638"></a></p>
<p>I quickly got it running in <a href="https://www.jetbrains.com/clion/">CLion</a>. It really is easy to set up, being a single header file.</p>
<p>&nbsp;</p>
<p>This is what the <a href="https://www.jetbrains.com/clion/">CLion</a> window looks like in distraction free mode (I really like that mode) and after running it:</p>
<p><img src="{{ site.baseurl }}/assets/2015/clion_and_catch.png" alt="Clion running a small Catch test project" width="598" height="738" /><br/> Clion running a small Catch test project</p>
<p>&nbsp;</p>
<p>Looks good, but since I'm really nit picky, heres a list of a few issues I would like to see fixed:</p>
<p><strong>1 - Creating a second test cases confuses <a href="https://www.jetbrains.com/clion/">CLion's</a> code parser to the point where it thinks we are defining a duplicate function.</strong></p>
<p>I get this warning message (only in the IDE, not when actually compiling, of course):</p>
<p><img src="{{ site.baseurl }}/assets/2015/clion_warning_1.png" alt="clion warning about duplicate functions" width="506" height="95" /></p>
<p>&nbsp;</p>
<p><strong>2 - Side effects of thinking the test case is a duplicate function</strong></p>
<p>Any method, variable, etc used in that test is marked as unused. Note how someOtherMethod is greyed out.</p>
<p>Sidebar is filled with these errors/warnings, which here are pretty harmless, but in more complex scenarios have all the drawbacks of <a href="https://en.wikipedia.org/wiki/False_positives_and_false_negatives#False_positive_error">false positives</a>.</p>
<p><strong>3 - Built in console does not support <a href="https://en.wikipedia.org/wiki/ANSI_escape_code">ANSI color codes</a>.</strong></p>
<p>This one is really a small issue, but it annoys me anyway.</p>
<p>I remember <a href="http://www.qt.io/ide/">QtCreator</a> used to have this exact same issue, but it got fixed a while back.</p>
<p>&nbsp;</p>
<p>C++ is a complex language to parse, and CLion gets a lot of it&nbsp;right, most of the time.</p>
<p>I'm hoping to see this great IDE improve quickly in the next releases.</p>
