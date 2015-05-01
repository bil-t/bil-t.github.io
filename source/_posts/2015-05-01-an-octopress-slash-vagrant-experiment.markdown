---
layout: post
title: "An Octopress/Vagrant Experiment"
date: 2015-05-01 22:52:06 +0000
comments: true
categories: [octopress, vagrant]
---
In my spare time, I like to try and learn new software technologies.
For this I use my Windows laptop. The problem is that after several cycles of installing and removing stuff, the laptop become slow. Its performance keep degrading with time until I take some time to reset its installation and reconfigure things.   

Recently, after struggling with ruby installation on Windows I decided to reconsider Linux. Since I needed windows for other reasons, I decided to try using virtualization. I started by using [VirtualBox](https://www.virtualbox.org/) to configure a Linux guest machine. While discussing this with a friend, he suggested trying [Vagrant](https://www.vagrantup.com/).  
<!-- more -->
I visited [Vagrant](https://www.vagrantup.com/) website and it immediately got my attention for its simplicity. All you need is a configuration file, a small set of commands and the virtual machine is up an running.  
Playing around with Vagrant tutorial lead me to the idea of creating a sandbox for each software development experiment or project I work on.
  
I decided to test the idea of this sandbox on my next project: this blog.  
As many software developers I settled on using [Octopress](http://octopress.org/)/[GitHub](https://github.com/) for my blog.  
For this, I needed a Linux machine with required tools installed and the blog source to be synchronized. After several iteration I got to a stage where I'm able to edit my blog from any computer connected to the internet.   
In three steps I'ma able to deploy a blog sandbox and start blogging:

1. First, install required tools: [git](http://git-scm.com/), [VirtualBox](https://www.virtualbox.org/) and [Vagrant](https://www.vagrantup.com/).
2. Second, clone my blog repository,
3. Finally, start the sandbox by switching to its directory and running Vagrant up

It took me some time to get to a simple and repeatable process.   
I'm glad of the result of this experiment; I'm using my blog sandbox to publish this post. This experiment showed me the real benefits from using [Vagrant](https://www.vagrantup.com/) and I'm pretty sure I'll be using it in other future projects. 

Although this post is not intended to be a tutorial on how to use [Vagrant](https://www.vagrantup.com/) or [Octopress](http://octopress.org/), I'm just going to mention a couple of things I found interesting as well as some difficulties I encountered and how I solved them. 

###What I liked most   
- **Easy X11 forwarding over SSH connections** by adding `config.ssh.forward_x11 = true` to Vagranfile. With [MobaXterm](http://mobaxterm.mobatek.net/) running on my Windows host I was able to display the guest.
- **Easy port forwarding** by adding `config.vm.network "forwarded_port", guest: 4000, host: 4000` all traffic network to the port 4000 on the host machine, was actually forwarded to the guest machine on the specified port.
- **[Vagrant synced folder](http://docs.vagrantup.com/v2/synced-folders/)** enables editing the files from both the guest and the host.

###What took me some time to figure out   
- **Shell provisioner as vVagrant user** and not as root: using `privileged false` in Vagrantfile didn't work for me when setting local version of Ruby via rbenv. I finally settled on chaining a call to a script with the specified user `su -c "source /vagrant/vagrant/user-config.sh" vagrant`
 
- **Blog preview only accessible from guest**, at first I thought it was a problem with port forwarding, but finally, after tedious searches on the internet, I found out that binding the server to 0.0.0.0 in Rakefile was the solution.   
 `server_host     = "0.0.0.0"   # server bind address for preview server`  
 `rackupPid = Process.spawn("rackup --host #{server_host} --port #{server_port}")`

If you're interessted in trying, the complete configuration is available in the  [octopress-vagrant-setup](https://github.com/bil-t/octopress-vagrant-setup) github repository.

