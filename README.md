# How to setup Cryptoverification Masternode  
- [How to setup Cryptoverification Masternode](#how-to-setup-cryptoverification-masternode)  
  * [VPS initial setup](#vps-initial-setup)  
        * [Requirements](#requirements)   
        * [1. Log into the VPS with **root**](#1-log-into-the-vps-with-root)  
        * [2. Git Installation](#2-git-installation)  
        * [3. Clone MN setup script](#3-clone-mn-setup-script)  
        * [4. Start MN setup script](#4-start-mn-setup-script) 
  * [Setup QT wallet](#setup-qt-wallet)  
        * [1. Create new receiving address and copy it](#1-create-new-receiving-address-and-copy-it)  
        * [2. Send 1000 CVCC to copied address](#2-send-1000-cvcc-to-copied-address)  
        * [3. Wait at least 15 confirms of transaction](#3-wait-at-least-15-confirms-of-transaction)  
        * [4. Open masternode configuration file](#4-open-masternode-configuration-file)  
        * [5. Get MN output and Generate new key for MN](#5-open-debug-console-tools-debug-console-and-get-mn-output-and-generate-new-key-for-mn)  
        * [6. Edit the masternode configuration file and save it](#6-edit-the-masternode-configuration-file-and-save-it)  
        * [7. Restart QT wallet](#7-restart-qt-wallet)  
        * [8. Copy masternode genkey to VPS console](#8-copy-masternode-genkey-to-vps-console-window-and-pres-enter)  
        * [9. Wait for VPS sync with blockchain](#9-wait-for-vps-sync-with-blockchain)  
        * [10. Start MN in QT wallet console](#10-start-mn-in-qt-wallet-console)  
		* [11. Check Masternode Status in VPS](#11-check-masternode-status-in-vps)		

## VPS initial setup

##### Requirements
- Ubuntu v16.04.x VPS with 1 CPU / 1gb MEM (recommend 2gb) 

***
##### 1. Log into the VPS with **root**  
[![Vps](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/1.png)]
***
##### 2. Git Installation:  
- ```sudo apt-get install -y git-core```  

[![Git](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/2.png)]()
***
##### 3. Clone MN setup script: 
- ```git clone https://github.com/CVCCVerifyCoin/OneClick_MNSetup.git```  

[![Script1](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/3.png)]()
***
##### 4. Start MN setup script: 
- ```cd OneClick_MNSetup && chmod +x cvcc-mn.sh && ./cvcc-mn.sh```  

[![Script2](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/4.png)]()  
***
**Now you need to wait some time, while script preparing the VPS to setup**  
[![Download Bitvise](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/5.png)]() 
**Don't close this window!** 
***		

## Setup QT wallet
##### 1. Create new receiving address and copy it
[![QT1](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/6.png)]() 
[![QT2](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/7.png)]()
[![QT3](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/8.png)]()

***
##### 2. Send 1000 CVCC to copied address
[![QT4](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/9.png)]() 
***
##### 3. Wait at least 15 confirms of transaction
[![QT5](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/10.png)]()
***
##### 4. Open masternode configuration file
- [![QT6](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/11.png)]()
***
##### 5. Open Debug console (Tools->Debug console) and Get MN output and Generate new key for MN:
- ```masternode outputs```  
- ```masternode genkey```  
***
##### 6. Edit the masternode configuration file and save it
- ```mn1 VPS_IP:1316 masternode_genkey masternode_output output_index```:
[![QT7](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/12.png)]()
***
##### 7. Restart QT wallet  
- **it's important**
***
##### 8. Copy masternode genkey to VPS console window and pres "Enter"
- on VPS window right-click to paste
[![QT8](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/13.png)]()  

if you see this, you are on the right track:
[![QT9](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/14.png)]()
***
##### 9. Wait for VPS sync with blockchain
- to check VPS sync, type: ```cryptoverification-cli getinfo``` if "blocks" coincides with the last block in the [Explorer], your VPS is synced!
[![QT10](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/15.png)]()
***
##### 10. Start MN in QT wallet console:
- ```startmasternode alias false mn1```  

[![QT11](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/16.png)]()
***
##### 11. Check Masternode Status in VPS:
- ```cryptoverification-cli masternode status```  

[![QT12](https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/assests/17.png)]()  

**Сongratulations you did it!**


# Guide for cvcc-mn-updater.sh:

`wget -q https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/cvcc-mn-updater.sh`

`sudo chmod +x cvcc-mn-updater.sh`

`./cvcc-mn-updater.sh`

# Guide for cvcc_autoinstaller.sh:

`wget -q https://raw.githubusercontent.com/CVCCVerifyCoin/OneClick_MNSetup/master/cvcc_autoinstaller.sh`

`sudo chmod +x cvcc_autoinstaller.sh`

`./cvcc_autoinstaller.sh`
