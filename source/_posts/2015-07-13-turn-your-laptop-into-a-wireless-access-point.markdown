---
layout: post
title: "Turn Your Laptop Into A Wireless Access Point"
date: 2015-07-13 19:13:30 +0000
comments: true
categories: [network, wifi, tips] 
---

A year ago, while participating to an off-site workshop, a colleague wanted to show a new mobile application prototype.  

For this purpose he needed a phone to reach both the internet and a laptop hooked to the local network.   
Since wireless connection was not available the demo was at risk.   
<!-- more -->
The laptop was running windows, equipped with a wireless network card and connected via ethernet to a LAN that gave it internet access.  
With that in mind, it occurred to me that making the wireless card act as an access point could be the answer.  
Searching the web I was able to find out how to achieve this by using the Microsoft Virtual WiFi mini port adapter, available on both windows 7 and 8.  

I recently re-used the same technique to watch movies served from my laptop using a raspberry pie with a usb wireless Lan adapter.  

Here's how to setup the Microsoft Virtual WiFi mini port adapter in simple steps.
  
First you need to run a command line with administrator privileges:
  
1. Locate the "Command prompt" program (Click Start, click All Programs, and then click Accessories under windows 7 or in the Start Search box, type cmd under windows 8)  
2. Right-click "Command prompt", and then click Run as administrator.

Then you need to setup a virtual wifi by running the following command:

`netsh wlan set hostednetwork mode=allow ssid=your_wifi_name key=your_wifi_password keyUsage=persistent`  

Replace your_wifi_name by the name of your network and 'your_wifi_password' by the password you want users to connect with.  

{% img center /images/2015-07-13-turn-your-laptop-into-a-wireless-access-point/cmd-1.png %}

Then type the following command to start the hosted network:
  
`netsh wlan start hostednetwork`

{% img center /images/2015-07-13-turn-your-laptop-into-a-wireless-access-point/cmd-2.png %}

Now all is left to do is to enable the internet sharing for this you need to got to 'Control Panel\All Control Panel Items\Network and Sharing Center' right click the newly created virtual wifi adapter, choose properties, click on the sharing tab, click the first check box and choose the appropriate networking connection:  

{% img center /images/2015-07-13-turn-your-laptop-into-a-wireless-access-point/settings-1.png %}  
{% img center /images/2015-07-13-turn-your-laptop-into-a-wireless-access-point/settings-2.png %}

To check the status of your hosted network use the command:

`netsh wlan show hostednetwork`

It will tell you information like the used channel as well as the number of connected clients.

Finally to stop the hosted network use the command:

`netsh wlan stop hostednetwork`

   
   

