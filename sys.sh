#!/bin/bash
echo '' > /etc/apt/sources.list
echo 'deb https://mirrors.aliyun.com/debian/ bullseye main non-free contrib
deb-src https://mirrors.aliyun.com/debian/ bullseye main non-free contrib
deb https://mirrors.aliyun.com/debian-security/ bullseye-security main
deb-src https://mirrors.aliyun.com/debian-security/ bullseye-security main
deb https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib
deb-src https://mirrors.aliyun.com/debian/ bullseye-updates main non-free contrib
deb https://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib
deb-src https://mirrors.aliyun.com/debian/ bullseye-backports main non-free contrib' >> /etc/apt/sources.list

sed -i "s@https://mirrors.aliyun.com@https://repo.huaweicloud.com@g" /etc/apt/sources.list
sed -i "s@https://mirrors.aliyun.com@https://repo.huaweicloud.com@g" /etc/apt/sources.list

apt update
