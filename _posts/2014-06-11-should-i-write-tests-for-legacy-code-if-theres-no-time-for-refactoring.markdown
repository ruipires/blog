---
layout: post
navigation: True
class: post-template
subclass: 'post'
status: publish
published: true
title: Should I write tests for legacy code if there's no time for refactoring?
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 445
wordpress_url: http://www.sennin.pt/?p=445
date: '2014-06-11 19:20:49 +0000'
date_gmt: '2014-06-11 19:20:49 +0000'
categories:
- articles
tags: [articles]
comments: []
---
<p>I found this collection of opinions about what to do when faced with legacy code in a tight schedule very interesting.<br />
Should we write tests for the code even though we know we will not be able to refactor it in the short/medium term. Is it a waste of time or are we contributing to contain the mess that old code can often degenerate into? What if to test it we need to take a step back in terms of code quality?</p>
<p>I hate having to deal with big chunks of untested legacy code, because it makes me feel I loose control of what I am doing. In those cases answering simple questions like "will this new feature work with no side effects ?" or "how long will it take to do a change in that part of the code" make me have to either say I don't know, or have to deal with varying degrees of certainty. Given how murphy's law works, I prefer to have my code tested and to have a high degree of confidence in it.</p>
<p>Also, I happen to think Uncle Bob's "Boyscout rule" to be a great rule to follow when doing professional programming.</p>
<p>Here is the article:</p>
<p><a href="http://arstechnica.com/information-technology/2014/06/should-i-write-tests-for-legacy-code-if-theres-no-time-for-refactoring/">http://arstechnica.com/information-technology/2014/06/should-i-write-tests-for-legacy-code-if-theres-no-time-for-refactoring/</a></p>
<p>What do you do in these situations ?</p>
