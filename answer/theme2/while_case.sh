#!/bin/bash

# 引数チェック
if [[ $1 = "" ]]; then
    echo ERROR:引数が指定されていません
    exit 1
elif [ $# != 1 ]; then
    echo ERROR:引数は一つのみ許容します
    exit 1
elif [[ ! $1 =~ .*txt ]]; then
    echo ERROR:引数がテキストファイルではありません
    exit 1
fi

# cnt変数
jsoncnt=0
csvcnt=0
txtcnt=0

# 引数ファイル内行数ループ
while read line
do
  case $line in
    *.json) 
	    jsoncnt=$((jsoncnt + 1))
	    ;;
    *.csv)  
	    csvcnt=$((csvcnt + 1))
	    ;;
    *.txt)
            txtcnt=$((txtcnt + 1))
            ;;
  esac
done < $1

# 計上結果出力
echo jsonファイル数は$jsoncntです
echo csvファイル数は$csvcntです
echo textファイル数は$txtcntです
