---
layout: post
status: publish
published: true
title: NoSuchMethodError and java method signatures
author:
  display_name: Rui Pires
  login: rui
  email: rui@sennin.pt
  url: http://www.sennin.pt
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 391
wordpress_url: http://www.sennin.pt/?p=391
date: '2013-10-15 15:20:14 +0000'
date_gmt: '2013-10-15 15:20:14 +0000'
categories:
- rant
- java
tags: []
comments: []
---
<p>Well, I'm always learning.<br />
Some times I learn the easy way (by reading about the mistake I'm about to make), but more often I actually make the mistake and end up banging my head on the desk.<br />
This painful learning experience makes sure I don't do the same mistake again.</p>
<p>While working in a Java project I assumed that I could change a method's return type (I made sure the return value was not being used anywhere) and have no impact on other modules (jars/bundles) of the application. After all, both the list of possible exceptions and the return type of a method are not part of its <a href="http://en.wikipedia.org/wiki/Method_signature#Method_Signature">signature</a>.</p>
<p>This is where I made my mistake: I just compiled a new jar and uploaded it to the staging environment. I left all the others untouched.<br />
Then I got a java.lang.NoSuchMethodError.<br />
After some <a href="http://stackoverflow.com/questions/1134054/changing-return-type-of-method-gives-java-lang-nosuchmethoderror">digging</a> I found out that although the signature is the same, the runtime symbol (the changed method) we are replacing is not kept unchanged.</p>
<p>The solution is to either revert the change, or re-compile the other jars that refer to that method and re-upload them.</p>
<p>Binary compatibility is an interesting beast.</p>
