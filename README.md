![cmlogo](http://screenshots.en.sftcdn.net/en/scrn/69671000/69671132/cyanogenmod-installer-04-535x535.png)
#(Work in Progress) CyanogenMod 12.1 Configuration for the Samsung Galaxy Core Prime (G360T1)

How to build:
-------------

Initializing a Build Environment:

    https://source.android.com/source/initializing.html

Initialize repo:

    repo init -u git://github.com/CyanogenMod/android.git -b cm-12.1

    curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/PlatinumMaster/android_local_manifest/master/local_manifest.xml
    repo sync
    vendor/cm/get-prebuilts

Compile:

    . build/envsetup.sh
    brunch cm_g360t1-userdebug
