#!/bin/bash
cd openwrt
# wireless
rm -rf files/etc/config/wireless
rm -rf files/etc/modules.d/wireless_enable
# golang newversion
rm -rf feeds/packages/lang/golang
git clone https://github.com/sbwml/packages_lang_golang -b 22.x feeds/packages/lang/golang
# geodata
wget -q -cp files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geosite.dat
wget -q -cp files/usr/share/v2ray https://github.com/Loyalsoldier/v2ray-rules-dat/releases/latest/download/geoip.dat
# Add luci-theme-opentomcat,Add luci-theme-argon
git clone https://github.com/jixiewang201907/luci-theme-opentomcat.git package/luci-theme-opentomcat
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
# Add amlogic
#git clone https://github.com/ophub/luci-app-amlogic.git package/luci-app-amlogic
# Add luci-app-passwall
#git clone -b main https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
#git clone -b main https://github.com/xiaorouji/openwrt-passwall2.git package/luci-app-passwall2
# Add luci-app-bypass
git clone https://github.com/jixiewang201907/by-pass.git package/by-pass
# Add luci-app-smartdns
git clone https://github.com/pymumu/openwrt-smartdns.git feeds/packages/net/smartdns
git clone https://github.com/pymumu/luci-app-smartdns.git feeds/luci/applications/luci-app-smartdns
# Add luci-app-adguardhome
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install luci-app-passwall
