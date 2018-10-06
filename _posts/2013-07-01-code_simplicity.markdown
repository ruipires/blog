---
layout: post
status: publish
published: true
title: My thoughts on "The Misplaced Obsession with Simplicity"
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
wordpress_id: 354
wordpress_url: http://www.sennin.pt/?p=354
date: '2013-07-01 21:44:19 +0000'
date_gmt: '2013-07-01 21:44:19 +0000'
categories:
- rant
tags: []
comments: []
---
<p>Let me start by saying I agree with the <a href="http://www.drdobbs.com/architecture-and-design/the-misplaced-obsession-with-simplicity/240157265">article</a> posted at <a href="http://www.drdobbs.com/">Dr. Dobb's</a> by Mr. <a href="http://www.drdobbs.com/authors/Andrew-Binstock">Andrew Binstock</a>.<br />
Having said this, I am writting this post because I am afraid the article has a big potential to be misquoted.</p>
<p>Please read the original <a href="http://www.drdobbs.com/architecture-and-design/the-misplaced-obsession-with-simplicity/240157265">article</a> before you read my counter-arguments.</p>
<p>Now, let me quote the article's conclusion:</p>
<blockquote>It's not simplicity that matters, but readability. Can the code be understood with the least amount of effort given its inherent complexity? That is the true criterion. How readable, or if you prefer, how maintainable is the code with respect to its complexity?
As to the obsessive reverence for simplicity, it is to me quixotic and sentimental. If we look at nature, we find that absolutely nothing in it is simple. Everything in nature is characterized by extraordinary complexity that masks further layers of complexity. As to human creations such as the automobile, they induce people, like the mechanic at my garage, to remember with fondness days past when everything was "simpler." But in fact, in the last 15 years, the rates of unexpected mechanical failures in cars has plummeted and gas mileage has soared. One of the biggest reasons for these advances is the 5 to 10 million lines of code in cars today. Yes, indeed, vastly complex code has delivered significant benefits &mdash; and made the mechanic's repair work considerably simpler
</blockquote>
The article seems to refer to a solution to a problem as an atomic unit.<br />
If we look at it that way, it will certainly be at least as complex as the problem it is solving.<br />
What bothers me is that there is no mention to the common practice of dividing the problem into smaller units. Divide and conquer.<br />
We can assume it is hinting at this when it talks of code maintainability, but I have to confess that I have heard so many different definitions of "maintainable", that I tend to be on the defensive in this subject.
No matter how complex a problem is, it is always possible to break it down to smaller problems, so that each of the smaller solutions are a lot simpler, and are easy to read, understand, test and maintain.
<blockquote>Simplicity is the quality of code that is no more complex than required to express the underlying complexity. In this way, simple code can be intensely complex. There is no inherent good/bad dichotomy.<br />
</blockquote>
I think this part should specifically mention the full working solution, and not just the "code".<br />
The full solution will certainly be as complex as the problem it is trying to solve. But the point I'm trying to make is that the parts that compose the solution can be all made extremely simple. The overall complexity is still there, but it is the interaction between all those simple pieces.
And as a wrap-up, I'll return to my concern about the potential to misquote the article.
For code that blatantly violates some of the good practice rules (for some odd reason, the <a href="http://en.wikipedia.org/wiki/Single_responsibility_principle">Single Responsability Principle</a> keeps springing to my mind), there is simply no excuse, there <strong>is</strong> a simpler way to implement it.<br />
I will make a prediction right here and now. Much like the argument for over-engineering something is sometimes thrown around gratuitously, so too will this article, specially by developers that feel that their code is good as is, and that there is no need to further improve it. <a href="http://en.wikipedia.org/wiki/Code_rot">Code rot</a>? Not happening in my code base, they'll say.
<p>At least one of the comments mentions in the article<a href="At least one of the comments mentions Robert C. Martin's - Clean Code.">Robert C. Martin's - Clean Code</a>.<br />
If you find yourself agreeing with the article a little too emphatically, please take a look at Clean Code, for the other side of the coin.
<blockquote>If I had more time I would have written a shorter letter.</blockquote>
<em>Blaise Pascal</em>
<p>Or should I say, If I had more time I would have written cleaner code?</p>
<p>p.s. It is our responsibility to make time for this!</p>
