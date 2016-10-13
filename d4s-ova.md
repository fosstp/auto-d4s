# Drupal4School Ova 虛擬機樣板使用說明：

版本：20161013

下載地址：https://drive.google.com/file/d/0ByMcx4nZLJ48b1JaQ0hIZUlTR1k/view

檔名與大小：D4S20161013.ova (1,596,551,680 bytes)

## OVA檔案驗證碼

md5：0f55ec5696f4598b9a495eb05bf2b553

sha1：93b767f880ffff55cfd84ec5b0c7054e679e7612

## Ova樣板模擬硬體

CPU：2 core

RAM：2048MB

HDD：320GB SATA

Network：Intel Pro/1000 MT Desktop (預設使用dhcp)

## Ova樣板使用軟體

OS版本：Debian8.6 最小安裝含ssh server

Docker版本：version 1.12.2, build bb80604

Drupal4School image版本：2016-10-06T23:28:35.500963753Z 

Mysql image版本：2016-10-13T12:49:26.931612156Z 

PhpMyadmin image版本：2016-10-04T14:20:15.079518663Z

## Ova樣板相關帳號密碼

OS 管理員：root/123456

OS SSH遠端登入帳號(提供su權限)：d4s/123456

Drupal系統管理員:admin/123456

PhpMyadmin 管理員:root/123456

Mysql 管理員:root/123456



## 匯入操作說明：

前置作業：建議先開啟主機板上VT-x相關虛擬化功能，避免OVA樣板運作異常

1. 請先安裝最新版VirtualBox軟體，下載網址：https://www.virtualbox.org/wiki/Downloads
2. 安裝完畢後開啟VirtualBox
3. 檔案->匯入應用裝置->匯入Ova檔案
4. 啟動虛擬機，修改Host網路卡
5. 啟動成功後請用root帳號登入，畫面顯示目前網站IP
6. 如要修改IP位址，請使用root權限輸入/root/ipconfig.sh，依照提示填寫IP設定資訊

