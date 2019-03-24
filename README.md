
LineageOS 14.1 for Lenovo TB-X704F
=====================================

For more information like what works and what doesn't, visit [the thread on xda-developers](https://forum.xda-developers.com/thinkpad-tablet/development/lineageos-14-1-lenovo-tab4-10-plus-t3899560).

**How to setup:**

1. Add these lines to your roomservice.xml:<br/>`<project  name="LumenReaper/android_device_lenovo_tb_x704f"  path="device/lenovo/tb_x704f"  remote="github"  revision="cm-14.1"  />`<br/>`<project  name="LumenReaper/android_vendor_lenovo_tb_x704f"  path="vendor/lenovo/tb_x704f"  remote="github"  revision="cm-14.1"  />`<br/>`<project  name="LumenReaper/android_kernel_lenovo_msm8953"  path="kernel/lenovo/msm8953"  remote="github"  revision="android-7.1"  />`
1. Navigate to the directory with your LOS source. Then run `repo sync`
1. Cherry pick this commit to fix screen off animation in landscape: https://review.lineageos.org/c/LineageOS/android_frameworks_base/+/244494

**How to build:**

1. Navigate to the directory with your LOS source. Then run `. build/envsetup.sh`
1. `lunch lineage_tb_x704f-userdebug`
1. `mka bacon`
