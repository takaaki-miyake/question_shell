# 丸山T勉強会用問題ShellScript
お題Shellを作成し、一部内容を削った上で問題用Shellを作成

# theme1
引数を数値か特定文字列かそれ以外かに判定し、結果をechoで出力するshell

以下、answer配下のShellの説明

* 数値の場合  
数値である判定を行った後、NG数値であるか否かを判定し、NG数値の場合はそこでShellを終了させる(exit1)  
NG数値ではない場合、数値を2倍にして結果を出力させる
* 特定文字列の場合  
引数がseattleの場合、seattleCosuilting!として結果を出力させる
* それ以外  
数値でもシアトルでもない旨を出力させる

### theme1の問題
questionのshellでは、特定文字列とそれ以外の判定文を消しているため、引数がseatlleの場合とそれ以外の判定を追加するよう修正してもらう

### theme1実行
```shell
./if_echo.sh [数値 or seattle or 文字列 or 記号]
もしくは
bash if_echo.sh [数値 or seattle or 文字列 or 記号]
```
# theme2
同階層のfileList.txtを読み込み、jsonファイル、csvファイル、textファイルの件数を出力させる

### theme2の問題
questionのshellでは、textファイルの件数算出を削っているため、件数算出のロジックを追加してもらう

### theme2実行
```shell
./while_case.sh fileList.txt
もしくは
bash while_case.sh fileList.txt
```