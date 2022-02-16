#!/bin/bash

# 引数チェック
if [[ $1 = "" ]]; then
    echo ERROR:引数が指定されていません
    exit 1
elif [ $# != 1 ]; then
    echo ERROR:引数は一つのみ許容します
    exit 1
fi

# 引数内容出力
echo 引数は$1です

#引数が数値の場合
if expr $1 : "[0-9]*$" >&/dev/null; then
    echo 引数は数値です: $1
    # NG数字判定
    if [ $1 -eq 123456789 ]; then
      echo ERROR:NG数字です
      exit 1
    fi 
    # 引数値を2倍
    x=`expr $1 \* 2`
    # 結果出力
    echo 引数の2倍の数値は$xです
# 引数がseattleの場合、引数とConsultingを結合させ、出力
elif [ $1 = seattle ]; then
    echo $1Consulting！
# 引数が数値でもseattleでもない場合、その旨を出力
else
    echo 引数は数値でもシアトルでもありません
fi
