---
layout: post
title: "Why I Don't Like The @author Tags"
date: 2016-03-03 23:59:53 +0000
comments: true
categories:  [software development]
---
The [JavaDoc](https://en.wikipedia.org/wiki/Javadoc) has a [@author](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#@author) tag that can be used to assign a programmer at the overview, package and class level.  
As a software engineer working in a team I never liked this tag.  
As I became a development manager, my unlikeness increased even more.  
This feeling is fed by negative impacts on both the "[Collective Ownership](http://www.extremeprogramming.org/rules/collective.html)" and the "[Bus factor](https://en.wikipedia.org/wiki/Bus_factor)".  

{% img center /images/2016-03-03-why-i-dont-like-the-at-author-tags/share.jpg %}

<!-- more -->  


[Collective Ownership](http://www.extremeprogramming.org/rules/collective.html) is an [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming) rule that encourages everyone to contribute to all parts of the code.  
Any developer can change any line of code to add functionality, fix bugs, improve designs or refactor.  
Collective Ownership mentality is great because every developer feels like he own the code.  
This drives quality up and fuels the passion that leads to inspiration.  
I'm a strong believer in the benefits of this approach and always encouraging my development teams to adopt it.  

The [Bus factor](https://en.wikipedia.org/wiki/Bus_factor) is the answer to a simple question: "how many people would need to get hit by a bus before this code collapses due to lack of knowledgeable or competent personnel?"   
You want that number to be high.  

The [@author](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#@author) tag is a signpost telling everyone else to stay away: 
"I'm the owner, this file belongs to me, no one else should touch it or at best you need to ask for my permission before modifying the code".    

{% img center /images/2016-03-03-why-i-dont-like-the-at-author-tags/do-not-touch.jpg %}  

It creates an single developer ownership mentality of portions of the code driving the bus factor toward one, and thus putting the project at risk.  

If you're using the [@author](http://www.oracle.com/technetwork/java/javase/documentation/index-137868.html#@author) tag, I hope I convinced you to stop or at least made you aware of its danger.


<br>
----------
*photo credits:*   
<a href="https://www.flickr.com/photos/opensourceway/5752191166/" title="Improving the speed and quality of research via shared algorithm implementations">Improving the speed and quality of research via shared algorithm implementations</a> <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>,
<a href="https://www.flickr.com/photos/luccawithcheese/3467529252/" title="You Don't touch the MOMA">You Don't touch the MOMA</a> <a href="https://creativecommons.org/licenses/by-nc/2.0/">(license)</a>




