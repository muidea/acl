#!/bin/sh

## Below building parameters can be set YES or NO
#ACL_CLIENT_ONLY
#DISABLE_DB
#HAS_MYSQL
#HAS_MYSQL_DLL
#HAS_PGSQL
#HAS_PGSQL_DLL
#HAS_SQLITE
#HAS_SQLITE_DLL
#HAS_POLARSSL
#HAS_POLARSSL_DLL

cmake -DCMAKE_TOOLCHAIN_FILE=~/Library/Android/ndk-bundle-r20/build/cmake/android.toolchain.cmake \
	-DANDROID_ABI="armeabi-v7a" \
	-DANDROID_ARM_NEON=ON \
	-DANDROID_PLATFORM=android-14 \
	-DCMAKE_SYSTEM_NAME=Android \
	-DACL_CLIENT_ONLY=YES \
	-DDISABLE_DB=YES \
	-DHAS_POLARSSL_DLL=NO \
	-DCMAKE_BUILD_TYPE=RELEASE \
	-DCMAKE_VERBOSE_MAKEFILE=ON \
	..
