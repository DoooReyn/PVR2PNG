#!/bin/bash

BASEDIR=$(dirname $0)
cd $BASEDIR
echo
ls
echo $BASEDIR
echo

read -p "警告：你确定要处理这个目录吗? (y/n) " RESP

#if [ "$RESP" = "y" ]; then
# rm -f *.png
# rm -f *.plist


find . -name \*.pvr.ccz | sed 's/\.pvr.ccz//g' | \
xargs -I % -n 1 TexturePacker %.pvr.ccz \
--sheet %.png \
--allow-free-size \
--disable-rotation \
--opt RGBA8888 \
--premultiply-alpha \
--dither-none-nn \
--border-padding 0 \
--data %.plist \
##--autosd-variant 0.5:.
##--main-extension -hd. \

#rm -f *.png.png
#rm -f *-temp.plist #.pvr.ccz

# rm -f *.plist
#else
#echo "请在正确目录执行此脚本"
#fi
