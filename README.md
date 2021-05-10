# LineageOS 18.1 for Lenovo TB-X704

**How to setup:**

1. Add the following lines to your `roomservice.xml` or `local_manifest.xml`:
```
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
    <project name="coffeinflash/android_device_lenovo_tb_x704f" path="device/lenovo" remote="github" revision="lineage-18.1" />
    <project name="coffeinflash/android_kernel_lenovo_msm8953" path="kernel/lenovo/msm8953" remote="github" revision="android-11" />
    <project name="coffeinflash/android_vendor_lenovo_tb_x704f" path="vendor/lenovo" remote="github" revision="lineage-18.1" />
</manifest>
```
2. Navigate to the directory with your LOS source. Then run `repo sync -c`

**How to build:**

1. Navigate to the directory with your LOS source. Then run `. build/envsetup.sh`
1. `lunch lineage_TBX704-userdebug`
1. `mka bacon`
