---
layout: post
title: "Invest In Metadata"
date: 2015-05-14 22:24:07 +0000
comments: true
categories: [productivity]
---
Recently I had a discussion with a colleague about an effort he was making to classify our enterprise wiki content.   
His prime motivation was the difficulty to track what was published, who publishes what and where different information are located.
Thus he was investing in building a directory for the wiki, by providing categorized links to the pages of interest.  
Seeing this, I couldn't agree less.

{% img center /images/2015-05-14-invest-in-metadata/directory.png %}

<!-- more -->
Don't get me wrong, my problem was not with the need but rather with the approach.  
I was as well facing the same problem when trying to look for information in our wiki and persuaded that there is room for improvement.  
Publishing a classified directory of shortcuts was definitely not the right answer. For me, the simple proof resides in the problem statement itself: if we aren't able to track the information how will we be able to maintain an up to date directory? Any human-edited directory is obsolete by design.

{% img center /images/2015-05-14-invest-in-metadata/obsolete-book.jpg %}
    
Looking back at the evolution of the search engines, one can see how things evolved from static directories to dynamic queries with real-time suggestions.
This also confirms that using static directories is not the right answer.
The problem we want to solve here is not new. I'm pretty sure that by now everybody have faced it at least once.  
I had faced it in the past with my e-mails and my photos. For instance, I wanted a quick way to find e-mails related to a certain subject and I needed to group photos by occasion.  
My first attempt was always to classify the data.   
Easy, for e-mails I used folders in my in-box and for photos it was folders on my drive or albums when using a hosting service.
Easy but not free, I had to invest some time to classify the initial stock. For emails automated rules are of great help, for photos it was rather manual (Disclaimer: being a programmer I had scripted the photos' classification).  
When done, I was rather happy, my data was organized, now I can find what I'm looking for easily.    

{% img center /images/2015-05-14-invest-in-metadata/photos-directory-tree.jpg %}

Alas, the success was ephemeral. Sometimes I needed to classify an e-mail in several categories. Some other times I needed to find the photos of one of my children for a certain month. My static classification failed me and it wasn't a surprise.
Fortunately for me things had evolved in my favor.
When Google launched their Gmail I was very happy to discover the labels as a replacement of folders. I can tag a mail with one or several labels. Labels can be used as search criteria. Labels were the real answer to my need that I had worked around it using folders. With labels I was able to enrich my e-mails with searchable metadata.

{% img center /images/2015-05-14-invest-in-metadata/gmail-labels.jpg %}   
  
In the digital photography world, two things happened. On one hand, devices evolved, and adding metadata to the photos became the norm (timestamp, gps coordinates, camera model ...). On the other hand, besides taking into account the photo metadata, it become easy to find a photo management tool with a face recognition feature. Thus, it's possible now to look for photos by combining all these information.

{% img center /images/2015-05-14-invest-in-metadata/picasa-face.jpg %}   
  
Taking a step back and looking again at all the cited examples, I can say that it's all about metadata. It's about adding "data about the data" and making it available for your tools. By exploiting the metadata, tools can offer not only unlimited alternate views, but also slice and dice capabilities.     
Getting back to our internal wiki problem statement, if you ask me how to solve it, my answer would be to use "Semantic Web" techniques to enrich the content with metadata, and provide a search engine that can exploit these metadata.  

{% img center /images/2015-05-14-invest-in-metadata/metadata.jpg %}

<br>
----------
*photo credits:* <a href="https://www.flickr.com/photos/jamiesrabbits/4248396588" title="Obsolete Book - 5/365 by Jamie, sur Flickr">Obsolete Book</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/loopzilla/139024246" title="iPhoto 6.0.2 munged my directory tree! by Gordon Joly, sur Flickr">iPhoto 6.0.2 munged my directory tree!</a> <a href="https://creativecommons.org/licenses/by-sa/2.0/">(license)</a>, <a href="https://www.flickr.com/photos/blake4tx/2840242241" title="Picasa Web Albums - Add Name Tags by blakeburris, sur Flickr">Picasa Web Albums - Add Name Tags</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>,<a href="https://www.flickr.com/photos/frederickmdrocks/6160077394" title="Inbox Triage With Gmail by David Bruce Jr., sur Flickr">Inbox Triage With Gmail</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>,<a href="https://www.flickr.com/photos/psychemedia/2857518684" title="ORO resource splash page meta data by Tony Hirst, sur Flickr">ORO resource splash page meta data</a> <a href="https://creativecommons.org/licenses/by/2.0/">(license)</a>