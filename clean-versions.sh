#!/system/bin/sh
a=$(cat "rules-admin.txt" "url-filter.txt" | egrep '^! versions:' | sed -n 's/! versions://g;$p')
b="`date +"%Y%m%d%H%M"`"
sed -i "s/^! versions:.*/! versions:$b/g" "rules-admin.txt" "url-filter.txt"
