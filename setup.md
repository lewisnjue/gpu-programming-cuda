## installing the driver 

- go to this website if you are using windows `https://www.nvidia.com/en-us/drivers/` and then fill the form to download the driver you want and install it 
-  you can also do the same for linux but we can use anotehr tool which is much simplear 
- then run the following commands 

```sh
sudo apt update 
sudo apt upgrade 

#  to get the latest drivers add offfical ubuntu ppa for graphics drivers

sudo add-apt-repository ppa:graphics-drivers/ppa

sudo apt update

# then install the driver you want 

sudo apt install nvidia-driver-<version> 

# you can also let the system autodetect and install using 

sudo ubuntu-dirvers autoinstall # this what i recommend 



``` 

then you need to disable open source drivers from loading by editing the following file `/etc/modprobe.d/blacklist-nouveau.conf` and adding this lines 

```sh
blacklist nouveau
options nouveau modeset=0
``` 
then after running that you exectue the follwing command 

```sh

sudo udpate-initramfs -u

```



