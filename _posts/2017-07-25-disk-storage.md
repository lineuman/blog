---
tags: [disk]
---

# disk and storage

## fdisk磁盘分区

日志文件应该存放在独立的分区，或者独立的磁盘中

`cat /etc/fstab`

从/dev/sdb创建分区/dev/sdb1

格式化分区 `mkfs.ext3 /dev/sdb1`

挂载分区到指定目录 `mount /dev/sdb1  /mnt`

`what-is-the-purpose-of-the-lostfound-folder-in-linux-and-unix`

```
fdisk /dev/sdb
Command (m for help): m
Command action
   a   toggle a bootable flag
   b   edit bsd disklabel
   c   toggle the dos compatibility flag
   d   delete a partition
   l   list known partition types
   m   print this menu
   n   add a new partition
   o   create a new empty DOS partition table
   p   print the partition table
   q   quit without saving changes
   s   create a new empty Sun disklabel
   t   change a partition's system id
   u   change display/entry units
   v   verify the partition table
   w   write table to disk and exit
   x   extra functionality (experts only)

```

## 物理卷和逻辑卷
Creating the LVM Physical Volumes

Creating the LVM Volume Groups

Creating the LVM Logical Volumes
中文

[http://blog.chinaunix.net/uid-20696246-id-1892246.html](http://blog.chinaunix.net/uid-20696246-id-1892246.html)

physical volume


logical volume manager

[https://www.centos.org/docs/5/html/Deployment_Guide-en-US/ch-lvm.html](https://www.centos.org/docs/5/html/Deployment_Guide-en-US/ch-lvm.html)


可以参考the linux document project

[http://tldp.org/LDP/intro-linux/html/sect_03_01.html](http://tldp.org/LDP/intro-linux/html/sect_03_01.html)

几个概念：硬盘，分区，物理卷，逻辑卷, 文件系统类型

几个命令:
df

mount

blockdev

parted

pvdisplay

lvdisplay

lsblk

fdisk

lsscsi

mkfs




[http://man7.org/linux/man-pages/man8/blockdev.8.html](http://man7.org/linux/man-pages/man8/blockdev.8.html)
blockdev --getsize64 /dev/sda

[https://www.tecmint.com/parted-command-to-create-resize-rescue-linux-disk-partitions/](https://www.tecmint.com/parted-command-to-create-resize-rescue-linux-disk-partitions/)
parted command

