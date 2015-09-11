---
layout: post
title: "Making Your XOOM 2 Kid Safe"
date: 2015-09-11 21:08:35 +0000
comments: true
categories: [Android, XOOM 2]
---
A couple of years ago I bought the Motorola Xoom 2 for my personal usage.  
It was my first Android tablet and I mainly planned to use it to make Skype calls, browse the Internet and read some e-books.
We also used it to play nursery rhyme videos to our last-born.     
As he grew, he was convinced that it was "his" tablet and started to play games on it.  
It didn't take him long to figure out how to look for YouTube videos or to install new games, this is when troubles started.
     {% img center /images/2015-09-11-making-your-xoom-2-kid-safe/Xoom2.png %}  
<!-- more -->
It was clear for us that, unless we wanted to constantly supervise him while using the tablet, we needed a strict parental control.  
The parental control is not built-in in the Xoom 2, but a lot of options are available in Google Play.  
Options varies from locking apps, to safe browsers, and screen time management apps.  
  
After trying some different strategies this is what I found most suitable.  
  
I first rooted the tablet in order to install an ad blocker. I chose to do this because most of the free games have pop-up ads.  
Beside being annoying, they are difficult for kids to skip. Most of the time the lead my kid to some content that I do not approve.  
  
Then I installed [Kids Place - Parental Control](https://play.google.com/store/apps/details?id=com.kiddoware.kidsplace) from [kiddoware](https://play.google.com/store/apps/developer?id=kiddoware).    
Beside restricting the kids to apps you have approved, Kids Place can be configured to override the 'home' button and to run on tablet boot.  
Additional plugins such as a safe video player, safe browser and screen time management can be installed too.
    {% img center /images/2015-09-11-making-your-xoom-2-kid-safe/Xoom2-Kids-Place.png %} 
With this configuration the Xoom 2 became a child safe Android tablet that I was confident to leave in my kid's hands.  
  
If you're interested in rooting your Xoom 2, here's the steps to follow:  
1. On tablet go to Settings -> Developers Options and enable the Usb Debugging option.        
2. On tablet go to Settings -> Security and enable Unknown Sources option.   
2. Plug your tablet to your PC, check the device manager to make sure the driver is properly installed.  
If you see a yellow exclamation mark next to the Xoom 2 driver, right-click on it, go to 'Driver' tab, click 'Update Driver', click 'Browse my computer ...', click the 'Let me pick ...'  
From the list choose the 'Android ADB Composite Driver'  
    {% img center /images/2015-09-11-making-your-xoom-2-kid-safe/adb-driver.png %}    
3. Download and unzip [Xoom2-IceCreamSandwich-RootFiles](https://github.com/bil-t/android-utils/blob/master/Xoom2-IceCreamSandwich-RootFiles.zip?raw=true)  
4. Run DroidRazrRoot404.bat  
5. Your tablet will reboot and you will have gained root access.  
  
To block ads do the following:  
1. download and install [AdAway](https://github.com/bil-t/android-utils/blob/master/AdAway-release_Build-Oct.13.2014.apk?raw=true) & [AdBlockPlus](https://github.com/bil-t/android-utils/blob/master/adblockplusandroid-1.3.apk?raw=true)  
2. Grant both apps root privileges when it's asked for.  
  
Now you're ready to install [Kids Place - Parental Control](https://play.google.com/store/apps/details?id=com.kiddoware.kidsplace) and make your tablet safer for kids.     