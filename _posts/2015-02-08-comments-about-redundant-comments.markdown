---
layout: post
status: publish
published: true
title: my comments about redundant comments
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "<p>It is generally a good idea to think about why you are doing things the
  way you currently doing them.</p><p>Sometimes you are faced with a new situation,
  and don't quite know what the correct or best way to handle it is. Hopefully you
  don't just do whatever happens to first pop into your mind. You take some time to
  think about it, and consider the pros and cons of each alternative.</p><p>In this
  post I'm going to talk about my opinion on doxygen (or javadoc) comments.</p>"
wordpress_id: 564
wordpress_url: http://www.sennin.pt/?p=564
date: '2015-02-08 12:11:03 +0000'
date_gmt: '2015-02-08 12:11:03 +0000'
categories:
- rant
tags: [rant]
banner: '/assets/2015/duplicate_stamp.png'
cover: '/assets/2015/cover/twin_windows.jpg'
cover_url: "https://pixabay.com/en/window-prague-twins-facade-wall-941625/"
cover_author_name: MartinHarry
cover_author_url: "https://pixabay.com/en/users/MartinHarry-1411929/"
cover_license_url: "https://creativecommons.org/publicdomain/zero/1.0/deed.en"
cover_license: Public Domain
comments: []
---
<p>It is generally a good idea to think about why you are doing things the way you currently doing them.</p>
<p>Sometimes you are faced with a new situation, and don't quite know what the correct or best way to handle it is. Hopefully you don't just do whatever happens to first pop into your mind. You take some time to think about it, and consider the pros and cons of each alternative.</p>
<p>In this post I'm going to talk about my opinion on doxygen (or javadoc) comments.<a id="more"></a><a id="more-564"></a></p>
<p>I remember learning about doxygen and how amazed I was at the idea of a tool that could extract documentation from the code itself. I started using it in the code I wrote, but sometimes others on the team were not so keen on documenting what they did. Being "forced" the corporate rule to document every single piece of code didn't feel so bad at the time. At least everybody would have to document their code. And then I started diligently following that rule and documenting every little bit of code I wrote.</p>
<p>All was good. But admittedly a bit boring at times.</p>
<p>A few years passed, and I kept (trying) to follow that rule, but things didn't always work out. Sometimes I would not have enough time to document everything, and would just document the essential parts, but would feel bad for not reaching the level of quality I had set myself up to.</p>
<p>I then read <a href="https://sites.google.com/site/unclebobconsultingllc/books">Clean Code</a>, and it caused me to rethink many of my assumptions. Time to put into practise the last paragraph of the <a href="http://agilemanifesto.org/principles.html">Agile Manifesto</a>:</p>
<blockquote>At regular intervals, the team reflects on how<br />
to become more effective, then tunes and adjusts<br />
its behavior accordingly.</blockquote>
Consider what you are actually contributing to the project when you write this documentation:</p>

{% highlight cpp %}
/**
  * @brief Default constructor.
  */
Card();
{% endhighlight %}

Yes. I can see its a default constructor.
Or this one:
{% highlight cpp %}
/**
  * @brief Gets the converted mana cost of the card.
  * @return The mana cost of the card.
  */
ManaCost getConvertedManaCost() const
{% endhighlight %}

Yes, yes. Two lines in the documentation restating what anyone can clearly see in the method signature.
<p>It would be far more useful to invest time in the description of what those two classes (Card and ManaCost) represent, than to add redundant information.</p>
<p>If you are not&nbsp;diligent enough to keep these useless comments up to date with any code refactors you do, you will end up with a far worse kind of documentation. The outdated and potentially misleading kind.</p>
<p>And after all this I had convinced myself.<br />
From now on I will:</p>
<ul>
<li>Not waste time or effort on redundant doxygen comments.</li>
<li>Only write them if they add extra information that you cannot get by just reading the public facing code (e.g. the method signatures).</li>
<li>Often remove these redundant comments from code I happen to refactor.</li><br />
</ul>
