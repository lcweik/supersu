LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := su
LOCAL_FORCE_STATIC_EXECUTABLE := true
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_LDLIBS += -ldl -llog -lc -lm
#LOCAL_SRC_FILES := su/su.c su/activity.c su/db.c su/utils.c su/daemon.c su/pts.c
LOCAL_SRC_FILES := su/su.c su/utils.c su/daemon.c su/activity.c su/pts.c
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := sqlite3
LOCAL_SRC_FILES := sqlite3/sqlite3.c
LOCAL_CFLAGS := -DSQLITE_OMIT_LOAD_EXTENSION
include $(BUILD_STATIC_LIBRARY)
