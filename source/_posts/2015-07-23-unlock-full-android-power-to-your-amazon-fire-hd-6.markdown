---
layout: post
title: "Unlock Full Android Power To Your Amazon Fire HD 6"
date: 2015-07-23 21:33:43 +0000
comments: true
categories: [Amazon Fire HD6, Android]  
---

I recently acquired an [Amazon Fire HD 6](http://www.amazon.com/dp/B00KC6I06S/ref=ods_fs_far) tablet.  
I had high hopes that it would be the perfect tablet to read books, use [Skype](www.skype.com) and check mails.  
I found its price attractive with respect to its characteristics, and being an old customer of Amazon I was confident that the tablet will meet my expectations.

{% img center /images/2015-07-23-unlock-full-android-power-to-your-amazon-fire-hd-6/fire-gapps.png %}
  
<!-- more -->
It was no surprise to me to find out that the Fire HD 6 had only access to the [Kindle Store](http://www.amazon.com/Kindle-Store/b?ie=UTF8&node=133140011). My unpleasant surprise was discovering that [Google applications](https://play.google.com/store/apps/dev?id=5700313618786177705&hl=fr) are not available in the Amazon store.    

Using the Fire HD 6 without the Gmail, Hangout, Drive and other google applications was not an option for me.  
Knowing that the Fire HD 6 is running Android, I started looking for a way to install the Google Apps.  

There are a lot of information on how to root the Fire HD 6 and install Google applications, unfortunately all resources are not up to date or detailed enough. It took me some time to figure it out, and after two attempts, I managed to get everything working perfectly. Here are the detailed steps that helped me get there.

To install Google application you need root access to the tablet.  
In order to get root access the Fire HD 6 must be running the Fire OS 4.5.3 or below.    
If you, being an enthusiast like me, have upgraded you tablet OS as soon as you received it you will have to apply the following steps to downgrade back to Fire OS 4.5.3. If you're already running 4.5.3 skip to step 4. 

1. Install the Fire OS 5.0 developer preview
	- Go to [Fire OS Developer Preview](https://developer.amazon.com/public/solutions/platforms/android-fireos?sc_channel=EM&sc_campaign=FireOSPreview&sc_%20detail=GetPreview)
	- Press the yellow `developer preview` button on the right side of the page
	- Log into your amazon account
	- Choose your device
	- Go to system settings/device options/system updates and press the check for updates button
	- Follow the instruction and complete the update	
2. [Set up ADB on your computer and enable ADB on your tablet](https://developer.amazon.com/public/community/post/Tx3RZFBU0KJTSWS/Setting-up-the-ADB-Driver-for-Kindle-Fire-Devices)
	- Installtion of the ADB driver on my windows 8.1 didn't work well. The trick that worked for me was to delete the Fire device from the device manger and to manually add an android ADB composite driver.
	{% img center /images/2015-07-23-unlock-full-android-power-to-your-amazon-fire-hd-6/android-adb.png %}
3. Install Fire OS 4.5.3: 
	- Download the [4.5.3 firmware](https://kindle-fire-updates.s3.amazonaws.com/update-kindle-20.4.5.3_user_453011120.bin) and the [apk files](https://github.com/bil-t/fire-hd6-android) 
	- Connect the tablet to computer and run the command `adb reboot recovery`
 	- Use volume keys and power button to navigate to `Apply update from ADB`
 	- From the computer type `adb sideload update-kindle-20.4.5.3_user_453011120.bin`
 	- From tablet select `wipe data/factory reset`
 	- From tablet select `reboot system`
	- Complete setup (do not connect to a wifi network yet)
4. Root the device:
	- Install KingRoot and JmzFireHDTool:
		- `adb install KingRoot-4.1.0.249-release-nolog-201505211812_105001.apk`
		- `adb install JmzFireHDTool_v4.apk`
 	- Temporarily disable otaverify via adb 
		- `adb shell pm block com.amazon.otaverifier` 
	- Connect to wifi and open KingRoot on your tablet
	- Press "try to root"
 	- Re-enable otaverifier 
		- `adb shell pm unblock com.amazon.otaverifier` 
 	- Open JMZ Fire Tools and press `Disable OTA's` and `Disable Ads` (most importantly **do not** install Google apps from JMZ)
5. Install a custom recovery: 
	- Install TWRP Manager
		- `adb install com.jmz.soft.twrpmanager-7.5.1.3.apk`
	- Install TWRP:
    	- Run TWRP Manager and give it superuser access when prompted. Say yes if it prompt to apply patch.
		- Tap top-left of screen for slide-out menu and select Install TWRP.
		- Confirm Device Name shows "ariel" and then tap Install Recovery. At warning screen, tap yes.  
6. Download the following to Fire's Download folder (or download to computer and copy to Download folder).
	- [4.5.4 update zip](https://docs.google.com/uc?id=0B5VDSXB6iXSmTEQ3cnljNzJhZk0&export=download)
	- [SuperSU update zip](https://github.com/bil-t/fire-hd6-android/blob/master/UPDATE-SuperSU-v2.46.zip?raw=true)
	- [Pico GAPPS](http://downloadandroidfiles.org/file.php/?File=/Gapps/KitKat/Android%204.4.X/pa_gapps-modular-pico-4.4.4-20150308-signed.zip)	
7. Update to 4.5.4
	- Turn off wifi.
	- Boot to TWRP: 
		- Power off tablet. 
		- Hold down power and volume-up buttons at same time until you see “Amazon,” then release.
	- Install the 4.5.4 update: 
		- Tap Install
		- Navigate to Download folder and tap the zip (twrp_ready_update-kindle . . .) and swipe "swipe to confirm flash."
	- Tap Home and install the SuperSU update zip.
	- Tap Reboot system. 
	- Boot to TWRP
	- Install the GAPPS zip
	- Wipe cache/dalvik and reboot system.	
	- Open JMZ Fire Tools and check if `Disable OTA's` and `Disable Ads` should be re-enabled.
8. Now open Play Store and sign in. Everything should work now! (When prompted to update store and/or services. Say yes.)  

<br>
----------
*references:  
http://forum.xda-developers.com/fire-hd/general/how-to-downgrade-to-4-5-3-root-device-t3139351  
http://forum.xda-developers.com/showpost.php?p=61832754&postcount=10  
http://forum.xda-developers.com/fire-hd/general/how-to-install-twrp-boot-recovery-2014-t3160431*

