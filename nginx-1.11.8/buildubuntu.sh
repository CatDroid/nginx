#!/bin/bash
INSTALL_DIR=$(pwd)/myubuntu

#只要指定了--prefix 所有的 nginx.conf nginx logs都会安装在prefex下面
#SBIN_PATH=${INSTALL_DIR}/sbin/nginx
#MODULE_PATH=${INSTALL_DIR}/modules/
#CONF_PATH=${INSTALL_DIR}/conf/nginx.conf

#LOG_DIR=${INSTALL_DIR}/logs/
#PID_PATH=${LOG_DIR}/nginx.pid
#LOCK_PATH=${LOG_DIR}/nginx.lock
#ERROR_LOG_PATH=${LOG_DIR}/error.log

# with-openssl with-zlib 等是依赖库的源码位置 不是库位置  
# objs/Makefile 可以查看到他们会编译成 .a 静态库  --disable-shared

./configure --prefix=${INSTALL_DIR} \
		--with-openssl=../openssl-1.0.2j \
		--with-pcre=../pcre-8.40 \
		--with-zlib=../zlib-1.2.11 \
		--add-module=../nginx-rtmp-module \
		| tee configure.txt



#		--sbin-path=${SBIN_PATH} \
#		--modules-path=${MODULE_PATH} \
#		--conf-path=${CONF_PATH} \
#		--error-log-path=${ERROR_LOG_PATH} \
#		--pid-path=${PID_PATH} \
#		--lock-path=${LOCK_PATH} \
