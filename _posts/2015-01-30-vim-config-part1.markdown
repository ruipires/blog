---
layout: post
status: publish
published: true
title: My VIM configuration - part I
author: Rui Pires
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "<p>I have been using Vim and gVim for a few years now.</p><p>Vim has a steep
  learning curve (but there <a href=\"http://vim-adventures.com/\">are
  great tutorials</a> out there), but&nbsp;its worth it, as it is a very powerful
  text editor.</p><p>While it is not supposed to be an IDE, there <a href=\"http://vimawesome.com/\">are
  a lot of plugins out there</a> that can make it get pretty close.</p><p>In
  this post I will share with you some of the configurations I use. Specifically,
  I will show you how I get gVim to look the way I like it.</p>"
wordpress_id: 551
wordpress_url: http://www.sennin.pt/?p=551
date: '2015-01-30 22:45:10 +0000'
date_gmt: '2015-01-30 22:45:10 +0000'
categories:
- tools
tags: []
banner: '/assets/2015/vim.png'
comments: []
---
<p>I have been using Vim and gVim for a few years now.</p>
<p>Vim has a steep learning curve (but there <a href="http://vim-adventures.com/">are great tutorials</a> out there), but&nbsp;its worth it, as it is a very powerful text editor.</p>
<p>While it is not supposed to be an IDE, there <a href="http://vimawesome.com/">are a lot of plugins out there</a> that can make it get pretty close.</p>
<p>In this post I will share with you some of the configurations I use. Specifically, I will show you how I get gVim to look the way I like it.<a id="more"></a><a id="more-551"></a></p>
<p>Vim stores its&nbsp;configurations in a file called .vimrc, in your home dir.</p>
<p>That may mean different things depending on the operating system you are using. For Linux and Mac OS X, it is your home dir (just type cd ~ in a shell and you will be there). In windows it can vary, but you can get there in a cmd shell by typing cd %HOME%.</p>
<p>In&nbsp;windows the vimrc file is sometimes called _vimrc. You can safely rename it to .vimrc and it will still be loaded. This is useful if you decide you want to keep your vimrc checked-in somewhere and only maintain one version for all platforms.</p>
<p>Before we start: I use Vundle, a VIM plugin manager that lets you install plugins directly from git (github by default). For this to work, you need to have git available as a shell command.</p>
<h1>Step 1 - Setup Vundle</h1><br />
Add this to your vimrc file (ignore the line numbers shown here, they are just meant to help me refer to a particular line in my posts):</p>
{% highlight vimscript %}
"""""" Use Vundle """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"""""" Plugins """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plugin 'gmarik/vundle'
{% endhighlight %}
After this, restart your vim (or reload vimrc by typing :source % in the vim command line).</p>
<p>It should still look the same old boring defaults.</p>
<p><img src="{{ site.baseurl }}/assets/2015/step1.png" width="578" height="194" /></p>
<p>This screenshot shows MacVim, but if you are running another Vim flavor, you should also see a clunky toolbar. Keep reading, we will hide&nbsp;it&nbsp;;)</p>

<h1>Step 2 - Setup colortheme and GUI&nbsp;options</h1><br />
Modify your vimrc to look like this:</p>
{% highlight vimscript %}
"""""" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
"""""" Plugins
Plugin 'gmarik/vundle'
Plugin 'oceandeep'
Plugin 'cthulhian'
"""""" GUI specific options
if has("gui_running")
colorscheme cthulhian
set guioptions-=T "disable gui toolbar
endif
{% endhighlight %}

Reload it, and ask Vundle to install plugins by invoking the :BundleInstall command in vim.</p>
<p>Reload it again and it should now look like this:</p>
<p><img src="{{ site.baseurl }}/assets/2015/step2.png" width="599" height="194" /></p>
<p>I have been using the oceandeep colortheme for quite a few years now. I love it. I have recently discovered cthulhian, which slightly tweaks some colors in oceandeep (you need to have both installed for cthulhian to work). This is my new favorite theme!</p>
<p>Another noteworthy theme you might be interested in is <a href="http://ethanschoonover.com/solarized">solarized</a>.</p>
<h1>step 3 - customize the status line</h1><br />
We will be installing vim-airline. For it to fully work, it needs a patched font installed (to show some extra symbols).</p>
<p>I recommend installing Source Code Pro for Powerline. Powerline was the first&nbsp;vim plugin that did something like this.</p>
<p>Adapt your vimrc to look like this:</p>

{% highlight vimscript %}
"""""" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"""""" Plugins
Plugin 'gmarik/vundle'
Plugin 'oceandeep'
Plugin 'cthulhian'
Plugin 'vim-airline'
"""""" GUI specific options
if has("gui_running")
colorscheme cthulhian
set guioptions-=T "disable gui toolbar
set guifont=Source\ Code\ Pro\ for\ Powerline:h18
endif
"""""" generic options
set laststatus=2 "always show status line
"""""" configure plugin: vim-airline
let g:airline_powerline_fonts=1
{% endhighlight %}

Reload it, run :BundleInstall and restart vim.<br />
It should now look like this:<br />
<img src="{{ site.baseurl }}/assets/2015/step3.png" width="931" height="337" /></p>

<h1>step 4 - add more visual tweaks</h1><br />
Adapt your vimrc to look like this</p>

{% highlight vimscript %}
"""""" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"""""" Plugins
Plugin 'gmarik/vundle'
Plugin 'oceandeep'
Plugin 'cthulhian'
Plugin 'vim-airline'
"""""" GUI specific options
if has("gui_running")
colorscheme cthulhian
set guioptions-=T "disable gui toolbar
set guifont=Source\ Code\ Pro\ for\ Powerline:h18
endif
"""""" generic options
set laststatus=2 "always show status line
set number "show line number
set nowrap "do not wrap lines
set listchars=tab:>-,trail:~,extends:>,precedes:< "show tabs, whitespace and line overflow/underflow
set wildmode=longest:full "when choosing, show longest match
set wildmenu "and show the remaining options in a menu
"""""" configure plugin: vim-airline
let g:airline_powerline_fonts=1
{% endhighlight %}

The extra options are commented inline. You can also run :help listchars, for example, to get the full description on that option.</p>
<p>These are the first things I add to a fresh Vim installation. I hope they help you.</p>
<p>I plan on doing a few more posts on particular Vim plugins that turned out to be life changers.</p>