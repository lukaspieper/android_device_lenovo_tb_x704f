#!/sbin/sh
baseband="";
for e in $(cat /proc/cmdline);
do
    tmp=$(echo $e | grep "androidboot.baseband" > /dev/null);
    if [ "0" == "$?" ]; then
        baseband=$(echo $e |cut -d":" -f1 |cut -d"=" -f2);
    fi
done

# Move variant-specific blobs
mv /system/system/vendor/firmware/variant/$baseband/a506_zap* /system/system/vendor/firmware/
mv /system/system/vendor/firmware/variant/$baseband/goodixfp* /system/system/vendor/firmware/
rm -rf /system/system/vendor/firmware/variant
