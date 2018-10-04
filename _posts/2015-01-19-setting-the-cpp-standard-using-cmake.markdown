---
layout: post
status: publish
published: true
title: Setting the c++ standard using cmake
author:
  display_name: Rui Pires
  login: rui
  email: rui@sennin.pt
  url: http://www.sennin.pt
author_login: rui
author_email: rui@sennin.pt
author_url: http://www.sennin.pt
excerpt: "<p><strong>Note</strong>: I have written an update to this post <a href=\"http://www.sennin.pt/2015/05/05/ask-cmake-for-a-cpp-standard/\">here</a>.</p><p>I'm
  currently trying to convert an existing code base from Makefiles to CMake. I'm doing
  this in order to showcase the advantages we can have by switching to CMake. Its
  an unofficial conversion, so I am not changing anything in the official repo. I
  plan on just having a bunch of CMakeLists.txt that I will then use a custom script
  to copy over the original source tree.</p>"
wordpress_id: 512
wordpress_url: http://www.sennin.pt/?p=512
date: '2015-01-19 23:37:00 +0000'
date_gmt: '2015-01-19 23:37:00 +0000'
categories:
- tools
- c++
- cmake
tags: []
banner: '/assets/2015/speed-telegraph.png'
comments:
- id: 5687
  author: Joao Figueiredo
  author_email: jfigueiredo@runbox.com
  author_url: http://log.egoscape.net
  date: '2015-01-20 22:23:27 +0000'
  date_gmt: '2015-01-20 22:23:27 +0000'
  content: "If you really really want to build in Windows, beware VS uses the VC++
    compiler, but can be configured to use Intels' C++ compiler (which has the -std
    option - see https://software.intel.com/en-us/articles/iso-iec-standards-language-conformance-for-intel-c-compiler).\r\n\r\nAlso
    check https://software.intel.com/en-us/c-compilers for details
    on some interesting optimizations the Intel compiler performs versus GCC (though
    it's best conforming to GCC when cross-compiling to embedded).\r\n\r\nIt's been
    a few years since I've messed with VS, but it was the best C++ IDE I've worked
    with so far, IMHO."
- id: 5688
  author: Rui Pires
  author_email: rui@sennin.pt
  author_url: ''
  date: '2015-01-21 19:37:08 +0000'
  date_gmt: '2015-01-21 19:37:08 +0000'
  content: Thank you Jo&atilde;o, that might be worth looking into, but I'll have
    to take some time to check what the licensing looks like.
- id: 5721
  author: Sennin &raquo; A Better way to ask cmake for a C++ standard
  author_email: ''
  author_url: http://www.sennin.pt/2015/05/05/ask-cmake-for-a-cpp-standard/
  date: '2015-05-05 21:29:34 +0000'
  date_gmt: '2015-05-05 21:29:34 +0000'
  content: "[&#8230;] A while back I wrote a post about how to set the c++ standard
    with cmake. [&#8230;]"
- id: 5842
  author: plastic extruder
  author_email: glennagoderich@web.de
  author_url: http://www.blogigo.com/inconclusivener66/Foam-extrusion-high-density-polyethylene-wood-flour/106/
  date: '2016-01-05 10:20:30 +0000'
  date_gmt: '2016-01-05 10:20:30 +0000'
  content: "Currently the soften goes to the metering component, where the screw height
    remains consistent.\r\nBasic screw design. If you are seeking for the best ways
    to \r\nfind biodegradable plastic extruders to get custom products for your company,
    contact Hall manufacturing."
- id: 5847
  author: plastic extruder
  author_email: tia.fortier@gmail.com
  author_url: http://all4webs.com/faultypatchwork21/xps-designconsiderationsforext?15801=32453
  date: '2016-01-31 04:26:15 +0000'
  date_gmt: '2016-01-31 04:26:15 +0000'
  content: "To understand the process that plastic extrusion companies use to manufacture
    their own products, you have to have some knowledge of \r\nchemistry and an understanding
    of the complex machines that are used in the manufacturing process.\r\nIn the
    cross over or perhaps soften step, the main width within the attach \r\nheightens
    even though the peak on the flight journey will reduce.\r\n\r\nThis heated plastic
    is also kept moving rapidly to prevent any premature hardening or deformities
    on the finished product."
- id: 5849
  author: plastic extruder
  author_email: clinton.diamond@gmail.com
  author_url: http://oliveriaghamfnjn.soup.io/post/661113707/Is-the-Hidden-Soy-in-Your-Foods
  date: '2016-02-12 20:21:10 +0000'
  date_gmt: '2016-02-12 20:21:10 +0000'
  content: "Another advantage is the safety feature. a ceramic heater the current
    is automatically minimized.\r\nExtruder is definitely the equipment intended for
    manufacturing more or less ongoing lengths of plastic sectors out from a selected
    style \r\nof acrylic resin."
- id: 5850
  author: plastic extruder
  author_email: shannamathias@gmail.com
  author_url: http://basseewazrmjkk.blog.com/2015/12/25/multi-lumen-tubing-what-is-it-and-how-will-it-help-you/
  date: '2016-02-13 10:11:03 +0000'
  date_gmt: '2016-02-13 10:11:03 +0000'
  content: "Currently the soften goes to the metering component, where the screw height
    remains consistent.\r\nIn the cross over or perhaps soften step, the main width
    within the attach \r\nheightens even though the peak on the flight journey will
    reduce.\r\n\r\nThe ceramic heaters that have got no fans in them can be used \r\nfor
    small areas only."
- id: 5858
  author: plastic extruder
  author_email: doyle.mcness@web.de
  author_url: http://decisivemercena97.soup.io/post/675020073/Plastic-Recycling-Equipment2-13
  date: '2016-03-21 21:21:37 +0000'
  date_gmt: '2016-03-21 21:21:37 +0000'
  content: "Currently the soften goes to the metering component, where the screw height
    remains consistent.\r\nThe decision to purchase products from this company is
    a \r\nbold decision that will bring to you many advantages.\r\nExtruder is definitely
    the equipment intended for manufacturing more or less ongoing lengths of plastic
    sectors out from a selected style \r\nof acrylic resin."
- id: 5864
  author: plastic extruder
  author_email: jimmiewinslow@gmail.com
  author_url: http://www.blackplanet.com/your_page/blog/view_posting.html?pid=4777624&amp;profile_id=65760374&amp;profile_name=lewis9austin9&amp;user_id=65760374&amp;username=lewis9austin9
  date: '2016-04-25 04:06:22 +0000'
  date_gmt: '2016-04-25 04:06:22 +0000'
  content: "When the electricity is passed a friction is created and thereby heat.\r\nQuite
    a few solo mess devices may, even so, be taken meant for combining.\r\nThe screw
    must also be designed to suit a specific type of die."
- id: 5868
  author: plastic extruder
  author_email: fernando.hung@inbox.com
  author_url: http://www.blackplanet.com/your_page/blog/view_posting.html?pid=4701121&amp;profile_id=65760374&amp;profile_name=lewis9austin9&amp;user_id=65760374&amp;username=lewis9austin9
  date: '2016-05-02 19:10:23 +0000'
  date_gmt: '2016-05-02 19:10:23 +0000'
  content: "Compared to other heaters they are very economical, dependable \r\nand
    efficient. Quite a few solo mess devices may, even so, be taken meant for combining.\r\nExtruders
    may be divided into three general types :."
- id: 5877
  author: plastic extruder
  author_email: lethamccue@gmail.com
  author_url: http://www.blackplanet.com/your_page/blog/view_posting.html?pid=4867332&amp;profile_id=65760326&amp;profile_name=coldtheory8975&amp;user_id=65760326&amp;username=coldtheory8975
  date: '2016-06-05 01:34:22 +0000'
  date_gmt: '2016-06-05 01:34:22 +0000'
  content: "Compared to other heaters they are very economical, dependable and efficient.\r\n*
    Ram Extruder. So the actual sturdy route filters \r\ngradually and also the fruit
    juice funnel broadens."
- id: 5878
  author: sheet extruder
  author_email: sammiejoe@t-online.de
  author_url: http://bambooexport.com/comment/html/index.php?page=1&amp;id=8833
  date: '2016-06-06 15:29:44 +0000'
  date_gmt: '2016-06-06 15:29:44 +0000'
  content: "They also calculated that they used less energy than itt would \r\ntake
    to recycle milk jugs conventionally.\r\nIt&nbsp;was&nbsp;used&nbsp;to&nbsp;create&nbsp;bristles&nbsp;fortoothbrushes&nbsp;in&nbsp;1938,\r\n&nbsp;and&nbsp;is&nbsp;now&nbsp;used&nbsp;in&nbsp;the&nbsp;manufacture&nbsp;of&nbsp;a&nbsp;rangeof&nbsp;things,&nbsp;from&nbsp;cloth&nbsp;to&nbsp;seatbelts&nbsp;and&nbsp;cords.\r\nPet
    moulds involve certain processes and it is essential to familiarize yourself with
    these various processes."
- id: 5880
  author: extrusion equipment
  author_email: nadiarigby@gmx.net
  author_url: http://domjuravlik.ru/forum/discussion/54252/the-appeal-of-recycling-extruder
  date: '2016-06-14 20:10:18 +0000'
  date_gmt: '2016-06-14 20:10:18 +0000'
  content: "Expert plastic extrusion companies serve the vital function of creating
    specific shapes out of hard plastic that are used to make various other products
    like tubing, casing, and more.\r\nBasic screw design. So the actual sturdy route
    filters gradually and also \r\nthe fruit juice funnel broadens."
- id: 5884
  author: plastic extruder
  author_email: lourdeswebber@the-quickest.com
  author_url: http://montani.org/index.php?a=stats&amp;u=susannecone5274
  date: '2016-06-28 11:01:08 +0000'
  date_gmt: '2016-06-28 11:01:08 +0000'
  content: "The part that differentiates injection molding from molding is that the
    melted plastic is placed in a cold mold under high pressure.\r\nThe preform is
    quickly put in the mold to keep it shapeless.\r\nOnce heated, the sheet is flexible
    but not liqauid or \r\ngooey."
- id: 5885
  author: plastic extruder
  author_email: imariver@inbox.com
  author_url: http://clammyinterior304.hazblog.com/Primer-blog-b1/Recycle-Your-Plastic-Bags-b1-p142.htm
  date: '2016-06-30 10:42:58 +0000'
  date_gmt: '2016-06-30 10:42:58 +0000'
  content: "To understand the process that plastic extrusion companies use to manufacture
    their own products, you have to \r\nhave some knowledge of chemistry and an understanding
    of the complex machines that are used in the \r\nmanufacturing process. Distinctive
    single screw extruder have unique functioning characteristics, and comprehensive
    comprehension of their running \r\nproperties can provide whole engage in to the
    functionality of your \r\nmachine. This heated plastic is also kept moving rapidly
    to prevent any \r\npremature hardening or deformities on the finished product."
---
<p><strong>Note</strong>: I have written an update to this post <a href="http://www.sennin.pt/2015/05/05/ask-cmake-for-a-cpp-standard/">here</a>.</p>
<p>I'm currently trying to convert an existing code base from Makefiles to CMake. I'm doing this in order to showcase the advantages we can have by switching to CMake. Its an unofficial conversion, so I am not changing anything in the official repo. I plan on just having a bunch of CMakeLists.txt that I will then use a custom script to copy over the original source tree.</p>
<p><a id="more"></a><a id="more-512"></a>The current code base is using C++98. We plan on changing this, but we need to fight our battles one at a time.</p>
<p>Apparently shared_ptr was changed with C++11 to avoid explicit uses of operator bool. This <a href="http://stackoverflow.com/questions/7580009/gcc-error-cannot-convert-const-shared-ptr-to-bool-in-return">stackoverflow post</a> explains the issue.</p>
<p>Since I cannot change the code, I need a way to choose which C++ standard the compiler should&nbsp;conform to.</p>
<p>I am also trying to showcase the CMake Visual Studio 12/2013 generator, but our project is currently compiling using a custom flavour of GCC. As such, I wanted to avoid having to fiddle with compiler specific flags in the CMakeLists.txt files, if at all possible.</p>
<p>Luckily, the <a href="http://www.kitware.com/blog/home/post/812">recently released</a> CMake 3.1 added support for this in the form of the&nbsp;<a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD.html#cxx-standard">CXX_STANDARD</a> and <a href="http://www.cmake.org/cmake/help/v3.1/prop_tgt/CXX_STANDARD_REQUIRED.html#cxx-standard-required">CXX_STANDARD_REQUIRED</a> properties.</p>
<p>All we need to do is set those properties for the targets we want. For example, considering we have a target named module1:</p>
<pre># set c++ standard to c++98<br />
set_property(TARGET module1 PROPERTY CXX_STANDARD 98)<br />
# ask for c++98 to be required (and not just a best-effort request)<br />
set_property(TARGET module1 PROPERTY CXX_STANDARD_REQUIRED ON)<br />
</pre><br />
But when generating the build/project files for Visual Studio, we get this error message:</p>
<p><a href="http://www.sennin.pt/wp-content/uploads/2015/01/cmake_gui_1.png"><img class=" size-full wp-image-515 aligncenter" src="http://www.sennin.pt/wp-content/uploads/2015/01/cmake_gui_1.png" alt="cmake_gui_1" width="600" height="426" /></a></p>
<p>&nbsp;</p>
<p>Apparently either the CMake folks don't know what flags to set in Visual Studio to force C++98 compliance (I highly doubt that), or there is no way to ask Visual Studio to conform to a particular standard version.</p>
<p>There is only going forward, no looking back I guess.</p>
<p>I find it sad Visual Studio does not have an equivalent to GCC and Clang's "--std=" flag.</p>
<p>Maybe this will change with <a href="http://www.visualstudio.com/pt-pt/news/vs2015-preview-vs">Visual Studio 2015</a> ? I still have to take the technical preview for a spin ;)</p>
