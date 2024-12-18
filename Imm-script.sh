#!/bin/bash
cd openwrt
# wireless
#rm -rf files/etc/config/wireless
#rm -rf files/etc/modules.d/wireless_enable
# geodata
wget -q -cp files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cp files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
# Add luci-theme-opentomcat
git clone https://github.com/jixiewang201907/luci-theme-opentomcat.git packages/luci-theme-opentomcat
# Add luci-theme-argon
#rm -rf package/lean/luci-theme-argon
#git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic
git clone https://github.com/ophub/luci-app-amlogic.git packages/luci-app-amlogic
# Add luci-app-passwall
git clone --depth 1 https://github.com/xiaorouji/openwrt-passwall-packages packages/passwalldp
git clone -b main https://github.com/xiaorouji/openwrt-passwall.git packages/passwalldp/luci-app-passwall
git clone -b main https://github.com/xiaorouji/openwrt-passwall2.git packages/passwalldp/luci-app-passwall2
# Add luci-app-bypass
git clone https://github.com/jixiewang201907/by-pass.git packages/by-pass
# Add luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git packages/luci-app-adguardhome
