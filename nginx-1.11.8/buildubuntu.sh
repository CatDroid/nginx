#!/bin/bash
INSTALL_DIR=./myubuntu
RTMP_MODULE=../nginx-rtmp-module
SBIN_PATH=${INSTALL_DIR}/sbin/nginx
MODULE_PATH=${INSTALL_DIR}/modules/
CONF_PATH=${INSTALL_DIR}/conf/nginx.conf

LOG_DIR=${INSTALL_DIR}/logs/
PID_PATH=${LOG_DIR}/nginx.pid
LOCK_PATH=${LOG_DIR}/nginx.lock
ERROR_LOG_PATH=${LOG_DIR}/error.log


./configure --prefix=./myubuntu \
	
	--add-module=../nginx-rtmp-module
