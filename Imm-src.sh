#!/bin/bash
cd openwrt
# Add a feed source
#echo 'src-git SSRplus https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
#echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2' >>feeds.conf.default
echo 'src-git amlogic https://github.com/ophub/luci-app-amlogic' >>feeds.conf.default
#echo 'src-git passwalldp https://github.com/xiaorouji/openwrt-passwall-packages' >>feeds.conf.default
