---
layout: post
title: "Custom Scrolling With Meteor"
date: 2015-06-21 15:15:41 +0000
comments: true
categories: 
---

I've recently tried using [Meteor](https://www.meteor.com/) to build a web application.  
I used [Iron.Router](https://github.com/iron-meteor/iron-router) to configure the different routes of the web application. Everything worked fine out of the box until I started using links with fragment identifiers.  
<!-- more -->
First thing I wanted to add was an animated scroll behavior when navigating between anchors on the same page.  
I was able to achieve this by overriding the `scrollToHash-function`:  

{% include_code 2015-06-21-custom-scrolling-with-meteor/animated-scroll.js %}  

Next I noticed that when scrolling in a page and then navigating to a new one, the scroll remained at its last position.  
The user experience was not acceptable.  When navigating to a new page, the user expects to land on top of the page and not somewhere in the middle.

To fix this behavior I used the Iron.Router [hooks](https://github.com/iron-meteor/iron-router/blob/devel/Guide.md#hooks).
I added a global hook that scrolls to the top of the page after the routing.  
This can be achieved by adding the following code:


{% include_code 2015-06-21-custom-scrolling-with-meteor/scroll-to-top.js %}  

With these two customizations I was able to have a nice scrolling user experience with my meteor application.   
What about you, do you have interesting customization to share ?