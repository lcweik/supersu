# supersu
具备完整功能的su

先获取root权限，然后重新挂载/system
mount -o remount,rw /system
跟踪CPU abi号，选择对应的su拷贝到/system/bin 或者/system/xbin
然后修改/system/bin/install-recovery.sh
在最后增加一行 
/system/bin/su --deamon &
或者
/system/xbin/su --daemon &
重启手机，就可以得到完整的，全功能root了。
