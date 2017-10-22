---
layout: post
title: "Beware The Too-Fast, Too-Soon Trap"
date: 2017-10-22 13:35:17 +0000
comments: true
categories: [software development, software architecture, technology]
---
On the 16th of October 2017 took place the [O'Reilly Software Architecture Conference](https://conferences.oreilly.com/software-architecture/sa-eu/public/schedule/grid/public/2017-10-16) in London. During the first two days, I attended to keynotes and talks where the [speakers](https://conferences.oreilly.com/software-architecture/sa-eu/public/schedule/speakers) shared their learning and thoughts on software architecture, architects roles, architecture documentation, developers skills both technical and soft.  
 
If you're in the enterprise software development space, you're probably aware that two types of categories of businesses exist out there, the ones that have a micro-services architecture and are practicing continuous deployment, and the others struggling to get there, dealing with their fat old [monolithic](https://en.wikipedia.org/wiki/Monolithic_system) application. Clearly, the monolithic architecture is still heavily present in the industry and the move towards modularity is still a case by case challenge.  

What I heard in the talks and during my discussions with the experts, surprised me and reassured me at the same time. When it comes to breaking down the monolith, all seemed to agree on a common approach, a pragmatic approach.  

It started in the key notes, with [Mark Richards](http://www.oreilly.com/pub/au/3609) using the [Steeplechase](https://en.wikipedia.org/wiki/Steeplechase) metaphor to explain how companies should move towards micro-services.

[{% img center /images/2017-10-22-beware-the-too-fast/steeplechase.jpg %}](/images/2017-10-22-beware-the-too-fast/steeplechase.jpg)

<!-- more -->


In summary, what Mark says, companies moving from monolithic application to a [micro-services](https://en.wikipedia.org/wiki/Microservices) architecture are like a person that never rode a horse, starts directly practicing steeplechase. Obviously the person is going to fall, and the fall will be hard.
The common sense would be to first learn how to ride a horse, and then to learn how to ride fast, and then and only then you try steeplechase.  

Applying this approach to the monolithic application means that the first step is to move to a [service oriented architecture](https://en.wikipedia.org/wiki/Service-oriented_architecture) (SOA), this doesn't require [DevOps](https://en.wikipedia.org/wiki/DevOps), it doesn't require organizational change either, and no deployment model change. 
After this first step, the move to micro-services can be initiated. Mark Richards recipe is not to move the whole application but rather start by the portion that are customer facing and where a micro-service model will bring added value to the customer.   

A bit later, while discussing with [James Thompson](https://conferences.oreilly.com/software-architecture/sa-eu/public/schedule/speaker/278928) on learning culture in software development organizations, I asked him if he faces situation where the developers eagerness to learn new stuff could put technological choices at risk. He smiles and deliberately tells me "*I always choose boring technologies*". He recommends to stick proven technology as long as it does the job ; "*if postgersql can do the job, don't use mongodb just because it's webscale*". For him, the real challenge is knowing  when to invest in new technology that represent real value to the organization. His recipe to tackling this, is to work on moving the team from a developer mindset to an engineering mindset. A mindset that cares about the product being built and that cares to have a rigorous process from writing code to deployment and customer experience. For James, what could hinder companies in such approach, is the long client feedback loop, the longer it is the harder is to make the shift. Inhis opinion, only organizational changes can help overcoming the feedback loop issue.

[{% img center /images/2017-10-22-beware-the-too-fast/learning.jpg %}](/images/2017-10-22-beware-the-too-fast/learning.jpg)

On another "meet the experts" session, I had the chance to assist to a round table with [Sam Newman](http://samnewman.io/). As author of the book [Building Microservices](http://samnewman.io/books/building_microservices/), it was only normal to ask him how one can move form monolithic application to a micro-services architectures. And again I was happy to hear a pragmatic answer advising people to seek for modularity first before jumping to micro-services. His point of view is that modularisation still bring a lot of value, start from what the language can bring you ; if you're in java use java modules or jars ; having a clean modular architecture is the first step. And then and only consider moving to a microservice what would bring more value to the product and the customer, "... the goal is not to move the application to a micro-services architecture, but rather to make it bring  in the money to the company..." he said laughing out loud !  Again his point was about taking the time to learn and get familiar with micro-services before moving towards, and after that only to move once the value of the shift is identified.  

Finally, in his talk about [Cloud Native Designs](Cloud Native Designs), [Michael Hausenblas](https://conferences.oreilly.com/software-architecture/sa-eu/public/schedule/speaker/122725) states the same idea when it comes to moving to DevOps. He describes a  Cloud Native Dev and Ops Maturity Model, with four different levels and again stresses on the necessity to go through the maturity levels one level at the time. It's a learning path, and by jumping too fast too early the risk of failing is high.
To sum it all up, one of my major takeaway from these talks and discussions is the **baby steps approach**, the importance of **taking the time to learn** before jumping into new things, and moreover the importance to **be guided by the value** the change will bring to the organization.

[{% img center /images/2017-10-22-beware-the-too-fast/path.jpg %}](/images/2017-10-22-beware-the-too-fast/path.jpg)

<br>
----------
*photo credits:*   
<a href="https://www.flickr.com/photos/elchurro/7237903054/" title="Learning">Learning</a> <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/vegaseddie/6944135089/" title="Huge Leap From Horse">Huge Leap From Horse</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/dhdesign/1032756532/" title="Bush Path">Bush Path</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>