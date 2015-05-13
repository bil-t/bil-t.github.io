---
layout: post
title: "3 Things Every Software Development Manager Should Do"
date: 2015-05-13 20:07:01 +0000
comments: true
categories: [software development, productivity, management]
---
Here are three practices that I found to be of a great help in my day-to-day work as software development manager.

<!-- more -->  

## Inspection is your friend ##
It's crucial to know how your code source health is.
Complex code tend to have a high maintenance cost and makes entry cost higher for a newcomer. Failing to apply best practices and recommendations can result in various bugs. A poor test coverage makes future development very likely to introduce regressions.  
Static and dynamic analysis are you best friends to give you accurate indicators about your code health. They also help you take appropriate actions to cure the spotted deficiencies.  
If you don't have this yet in place, all it takes is these simple steps:  
1. Start by setting up a continuous code analysis process for your source code  
2. Define a quality profile and break the build whenever the quality gateway is violated  
3. Every time an issue is fixed, adjust the quality gate accordingly

{% img center /images/2015-05-13-3-things-every-software-development-manager-should-do/inspection.jpg %}
  
 
## Better double-check ##
Static and dynamic code analysis can help you track the source code health but when it comes to technical design they are rather limited.  
When software development manager drifts away from the code because of other duties that require his attention, code review can be a good help.  
By reviewing the changes regularly the software development manager can stay up to date with the design changes and can intervene at an early stage if needed.
How to do it? By a continuous automated code review generation process:  
1. Automatically create a code review for each new change  
2. Keep the pace, perform the review regularly   

{% img center /images/2015-05-13-3-things-every-software-development-manager-should-do/diff.jpg %}
  

## Get your hands dirty ##
Quite often the software development manager doesn't have room anymore for coding. Unfortunately this can make him unaware of the coding conditions, pain-points and other important factors. If the team fail to give him a comprehensive feedback this can result in negative outcomes.   
My suggestion, make room to code. Besides giving you an accurate idea of the work conditions of your team, you'll enjoy performing what initially made you want this job.  

{% img center /images/2015-05-13-3-things-every-software-development-manager-should-do/hack.jpg %}    
<br>
----------
*photo credits:* <a href="https://www.flickr.com/photos/dumindaxsb/2873528646" title="On Screen Magnification by Duminda Jayasena, sur Flickr">On Screen Magnification</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/jblyberg/3942639156" title="My eyes are starting to hurt by John Blyberg, sur Flickr">My eyes are starting to hurt</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/adulau/5136853276" title="Chris Nickerson at hack.lu 2010 by Alexandre Dulaunoy, sur Flickr">Chris Nickerson at hack.lu 2010</a> <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>  
