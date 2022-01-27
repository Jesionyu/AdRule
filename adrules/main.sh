#!/bin/sh
cd adrules/
wget https://raw.githubusercontent.com/Cats-Team/AdRules_dev/main/adguard-full.txt
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_privacy.txt
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_lite.txt
wget -O adblock+adguard-basic-source.txt https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock.txt
wget -O adblock+adguard-full-source.txt https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_plus.txt

#rm -f *.txt
echo '! Title: AdRules (Adblock+AdGuard-basic)' >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
cat tdate.txt adblock+adguard-basic-source.txt >> adblock+adguard-basic.txt
rm -f tdate.txt
echo "! Title: AdRules (Adblock+AdGuard-Full)" >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
cat tdate.txt adblock+adguard-full-source.txt >> adblock+adguard-full.txt
rm -f tdate.txt *source.txt
exit
