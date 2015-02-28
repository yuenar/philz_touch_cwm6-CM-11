Philz_Touch_Recovery_CN
=======================

汉化版PhilzTouch 已添加MT6592支持
#### Building
Philz Touch Recovery 6.59全触控 汉化版
philz_touch6.59.0_cwm6.0.5.1-CN-CM11.0
XDA_Home page_
http://forum.xda-developers.com/showthread.php?t=2201860

参考 https://github.com/X-s/android_bootable_recovery
感谢@X-s大神的MTK备份信息 感谢@xiaolu大神的字库文件 感谢@cyanogenmod的核心源码 感谢@philz-cwm6的philztouch源码

如要MTK支持:
Boardconfig.mk加入
BOARD_RECOVERY_MTK := true
If you haven't build recovery ever before, please look up the thread linked above.
If you regularly build ROMs/Recoveries for your device, and have a working CWM setup
on your build machine, then you can quickly set up and build Philz Touch recovery as well

Check these three patches are present in your build/ directory
   1. https://github.com/CyanogenMod/android_build/commit/c1b0bb6
   2. https://github.com/CyanogenMod/android_build/commit/6b21727
   3. https://github.com/CyanogenMod/android_build/commit/fddc5f4

Clone philz recovery to bootable/recovery-philz folder

    git clone https://github.com/PhilZ-cwm6/philz_touch_cwm6 bootable/recovery-philz -b cm-11.0

Now build with RECOVERY_VARIANT flag set to philz.

    . build/envsetup.sh && lunch && make -j8 recoveryimage RECOVERY_VARIANT=philz

or

    export RECOVERY_VARIANT=philz
    . build/envsetup.sh && lunch && make -j8 recoveryimage

or

    add to device BoardConfig.mk:
        RECOVERY_VARIANT := philz
    and run:
        build/envsetup.sh && lunch && make -j8 recoveryimage
