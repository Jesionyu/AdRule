#!/bin/sh
cd adrules/
rm -f *.txt
wget https://raw.githubusercontent.com/Cats-Team/AdRules_dev/main/adguard-full.txt
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_privacy.txt
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_lite.txt
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock.txt 
wget https://raw.githubusercontent.com/hacamer/adblock_list/master/adblock_plus.txt 

cat adblock.txt | grep -v "^!" >> adblock+adguard-basic-source.txt
cat adblock_plus | grep -v "^!" >> adblock+adguard-full-source.txt

rm -f adblock.txt adblock_plus.txt
num=`cat adblock+adguard-basic-source.txt | wc -l`
echo '! Title: AdRules (Adblock+AdGuard-basic)' >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
echo "! Total count: $num" >> tpdate.txt
cat tdate.txt adblock+adguard-basic-source.txt >> adblock+adguard-basic.txt
rm -f tdate.txt
num2=`cat adblock+adguard-full-source.txt | wc -l`
echo "! Title: AdRules (Adblock+AdGuard-Full)" >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
echo "! Total count: $num2" >> tpdate.txt
cat tdate.txt adblock+adguard-full-source.txt >> adblock+adguard-full.txt
rm -f tdate.txt *source.txt
exit
