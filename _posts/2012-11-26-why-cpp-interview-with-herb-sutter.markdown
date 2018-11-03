---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Why C++, interview with Herb Sutter
author: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 273
wordpress_url: http://www.sennin.pt/?p=273
date: '2012-11-26 13:33:43 +0000'
date_gmt: '2012-11-26 13:33:43 +0000'
categories:
- interview
- c++
tags: [interviews, c++]
comments: []
---
<p>I just listened to a podcast interview with <a href="http://www.herbsutter.com">Herb Sutter</a>, by <a href="http://www.hanselminutes.com/">Scott Hanselman</a>, and it is really worth sharing.</p>
<p>You can find Herb's blog post about it <a href="http://herbsutter.com/2012/11/24/podcast-interview-on-hanselminutes/  ">here</a>. And the podcast itself is <a href="http://www.hanselminutes.com/346/why-c-with-herb-sutter  ">here</a>.</p>
<p>The interview revolves around why C++ is having a resurgence, why it seems a different language from what most people that haven't used it in a while remember, and why it is still heavily used and matters in an age of massive datacenters and mobile computing.</p>
<p>In his blog post Herb mentions some of the topics they discussed, so I though I'd highlight the ones that I enjoyed the most, and add a small comment of my own:</p>
<ul>
<li><strong>2:00&nbsp;</strong>C++ has changed, but we still call it C++.</li><br />
</ul>
<p style="padding-left: 60px;">In fact, sometimes I find it hard to explain to those not in touch with the current language good practices and techniques, exactly what I am talking about when I talk about C++. Normally I refer to it as modern C++, but the term <em>modern</em> tends to mean different things to different people. It also tends to change with time ... Maybe I'll start referring to it as C++11, altough most of what I currently know was already in use with C++98 (yeah, I'm still getting used to all of the new goodies).</p>
<ul>
<li><strong>5:30</strong>&nbsp;(Why) do we care about performance any more?</li><br />
</ul>
<p style="padding-left: 60px;">This is an argument that has always annoyed me, even before I started programming. Why would I (as a user) have to upgrade, just to be able to run a program that is not taking advantage of the hardware I have (or is wasting it for tasks that are not useful to me).</p>
<p style="padding-left: 60px;">This made me strongly identify with one of C++'s design rationales: "only pay for what you use".</p>
<p style="padding-left: 60px;">The counter argument has always been "computers are getting faster and memory is getting cheaper every day, you shouldn't worry about those details and focus on programmer productivity".</p>
<p style="padding-left: 60px;">I have to agree with programmer productivity part, but I never accepted that we need to sacrifice hardware resources to do that.</p>
<p style="padding-left: 60px;">As it turns out, this turned out to be a lot more important as computing shifted from desktops, where you have plenty of power (processing power, and electrical power), to datacenters (where you need to worry about power consumption, heat dissipation, etc) and mobile applications (where if you are not efficient, battery life is going to take a big hit).</p>
<p style="padding-left: 60px;">I have to say I loved Herb's counter argument of "your Mom doesn't care how good your battery is, she cares how long it lasts".</p>
<ul>
<li><strong>13:45</strong>&nbsp;C++ is having a resurgence. Where is C++ big?</li><br />
</ul>
<p style="padding-left: 60px;">Herb mentions that C/C++ (the Visual C++ team) is the only team at microsoft that affects all others. All others depend on it.</p>
<p style="padding-left: 60px;">He also talks about <a href="http://erdani.com/">Andrei Alexandrescu</a> working at Facebook, and their gradual move from php to C++ (see hiphop in <a href="https://github.com/facebook/hiphop-php/wiki  ">github</a> and at <a href="https://developers.facebook.com/blog/post/2010/02/02/hiphop-for-php--move-fast/  ">facebook</a>)</p>
<p style="padding-left: 60px;">I have to mention, there are a lot more examples of this dependency on C++ (to several degrees). Apple, Google, etc.</p>
<ul>
<li><strong>18:00</strong>&nbsp;Why not just use one language? or, What is C++ good at? Efficient abstraction and portability.</li><br />
</ul>
<p style="padding-left: 60px;">Here I hear, confirmed by a C++ guru, what I keep saying. C/C++ is more portable than most people think. If you want to target multiple platforms, specifically mobile, you can write all of the logic in C/C++, and just have to take care of the specific platform details, in particular the GUI.</p>
<p style="padding-left: 60px;">Scott mentions that this has been done in Mono (.net) without the need to rewrite anything.</p>
<p style="padding-left: 60px;">I have to say I love being able to reuse more code, but have grown to dislike GUIs that do not conform with the look and feel of the platform they are running on.</p>
