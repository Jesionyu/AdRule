#!/bin/sh
echo '! Title: Some Rules' >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
cat tdate.txt rules-admin-source.txt >> rules-admin.txt
rm -f tdate.txt
echo "! Title: Hacamer's URL Filter" >> tdate.txt
echo "! Version: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M') " >> tdate.txt
echo "! Last Update: $(TZ=UTC-8 date +'%Y-%m-%d %H:%M:%S')（北京时间）" >> tdate.txt
cat tdate.txt url-filter-source.txt >> url-filter.txt
rm -f tdate.txt
exit
