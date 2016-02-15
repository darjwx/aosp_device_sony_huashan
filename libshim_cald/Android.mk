# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

# libshim_cald
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    binder/Binder.cpp \
    binder/BpBinder.cpp \
    binder/IPCThreadState.cpp \
    binder/MemoryHeapPmem.cpp \
    binder/Parcel.cpp \
    binder/Static.cpp \
    gui/BitTube.cpp \
    gui/ISensorEventConnection.cpp \
    gui/ISensorServer.cpp \
    gui/Sensor.cpp \
    gui/SensorEventQueue.cpp \
    gui/SensorManager.cpp \
    utils/BufferedTextOutput.cpp \
    utils/Flattenable.cpp \
    utils/Static.cpp \
    utils/TextOutput.cpp \
    utils/Threads.cpp \
    GraphicBufferMapper.cpp \
    Parcel.cpp \
    VectorImpl.cpp

LOCAL_SHARED_LIBRARIES := \
    libbinder \
    libcutils \
    libgui \
    libhardware \
    liblog \
    libui \
    libutils

LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/include \
    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include

LOCAL_ADDITIONAL_DEPENDENCIES := \
    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr

LOCAL_CFLAGS += \
    -DBINDER_IPC_32BIT \
    -DHAVE_PTHREADS \
    -Wall

LOCAL_MODULE := libshim_cald
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
