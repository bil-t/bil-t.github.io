---
layout: post
title: "Vagrant Powered Perforce"
date: 2015-05-20 19:48:11 +0000
comments: true
categories: [perforce, vagrant] 
---
{% img center /images/2015-05-20-vagrant-powered-perforce/vagrant+perforce.png %}

After attending the [Automated Visual Software Analytics ](https://open.hpi.de/courses/softwareanalytics2015/ "Automated Visual Software Analytics") online course I had an idea on computing some new metrics deduced from the VCS ([Version Control System](http://en.wikipedia.org/wiki/Revision_control "VCS")).  

Since I want to make use of these metrics at work, my implementation should be
able to work against a [Perforce](http://www.perforce.com/ "Perforce.com") server, the VCS we mainly use.    
<!-- more -->
In order to have the appropriate development environment I needed a Linux virtual machine on which Perforce is installed, configured an running properly.
I had previously used [Vagrant](blog/2015/05/01/an-octopress-slash-vagrant-experiment/ "An Octopress/Vagrant Experiment") to sandbox a development environment, and at that moment I knew it was the beginning of a long-term addiction.    
  
Fortunately for me, Perforce can be downloaded free for up to 20 users.  
My goal was to configure a virtual machine via Vagrant and provision it by installing a perforce server, running it and make it accessible from the host machine.  
  
Interested ? Here's how to do it.

## 1. Port Forwarding: Configuration

{% include_code 2015-05-20-vagrant-powered-perforce/Vagrantfile %}

Since I was already using a Vagrant virtual machine I had to pay attention to using a different set of ports.
The SSH port forwarding is bound, out of the box, to 2222. It was not clear in the documentation how to disable it. After several attempts and some googling I ended up by finding the right way to do it. For it to work you need to add the following two entries in the Vagrant file:  

`config.vm.network :forwarded_port, guest: 22, host: 2222, id: "ssh", disabled: true`    
`config.vm.network :forwarded_port, guest: 22, host: 2223, auto_correct: true`  

Perforce uses by default the port 1666, I chose to use the same port when forwarding it to the host.
     
## 2. Provisioning: Installing and starting Perfoce 

Next I had to install perforce and run it. I was lucky enough to stumble upon an article that revealed to me the existence of a public Perforce FTP server.  

Knowing that, I used a first provisioning shell script to download the perforce server binary (p4d) and its command line client (p4).

{% include_code 2015-05-20-vagrant-powered-perforce/provision_once.sh %}

A second provisioning script, executed with a non privileged user, starts the Perforce server and does a connection attempt.

{% include_code 2015-05-20-vagrant-powered-perforce/provision_always.sh %}

This script is configured to run at each restart of the virtual machine to make sure that the Perforce server is always started.


## 3. Accessing Perforce from host

It's worth to note that if the second provisioning script is ran with a privileged user
the connection from the host was failing. I took me some time to figure out that starting the perforce server with the non privileged user, is the solution. I didn't understand the reason behind it but I was glad it was working.  
With that in place, the Perforce command line client running on the host machine was able to connect to the Perforce server running on the guest machine with no trouble.


{% img center /images/2015-05-20-vagrant-powered-perforce/p4-client-host.png %}


Want to try it ? Fork it from [vagrant-perforce-provisioning](https://github.com/bil-t/vagrant-perforce-provisioning.git).