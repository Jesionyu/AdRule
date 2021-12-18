#!/system/bin/sh
a=$(cat "1.txt" | egrep '^! versions:' | sed -n 's/! versions://g;$p')
b="$(( $a + 1 ))"
sed -i "s/^! versions:.*/! versions:$b/g" "1.txt"
