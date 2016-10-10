# Drupal4School Ova 虛擬機樣板使用說明：

版本：20160926

下載地址：https://drive.google.com/file/d/0ByMcx4nZLJ48aVJrSTlWUXdpMzg

檔名與大小：D4S20160926.ova (1955634688 bytes)

## 檔案驗證碼

md5：95bd7b5566c83d8a9c2e9ab85b5c1d60

sha1：b82f5d51c371adff3e3a048ae801374fd52ae4eb

## Ova樣板模擬硬體

CPU：2 core

RAM：2048MB

HDD：320GB SATA

Network：Virt-IO net (預設使用dhcp)

## Ova樣板使用軟體

OS版本：Debian8.5 最小安裝含ssh server

Docker版本：version 1.12.1, build 23cf638

Drupal4School image版本：

2016-09-26T01:08:43.615192221Z sha256:7e2c26a5c6de1b6b55867c1dffa5628f100fd7317a77658d716bb381fa6cfc28

Mysql image版本：

2016-09-15T12:37:59.265041313Z sha256:45fefdaadb8c4f8c4743998eb45e9fec2a935070b219c5339e48ee08207c4ee6

PhpMyadmin image版本：

2016-09-23T18:54:58.798084218Z sha256:fe8c9a43e85ba407ede642f3fb4f44984671d9db9c6583e1c86e525f97b85962

## Ova樣板相關帳號密碼

OS 管理員：root/12345678

OS SSH遠端登入帳號(提供su權限)：d4s/12345678

Drupal系統管理員:admin/12345678

PhpMyadmin 管理員:root/12345678

Mysql 管理員:root/12345678



## 匯入操作說明：

前置作業：建議先開啟主機板上VT-x相關虛擬化功能，避免OVA樣板運作異常

1. 請先安裝最新版VirtualBox軟體，下載網址：https://www.virtualbox.org/wiki/Downloads
2. 安裝完畢後開啟VirtualBox
3. 檔案->匯入應用裝置->匯入Ova檔案
4. 啟動虛擬機，修改Host網路卡
5. 啟動成功後請用root帳號登入，畫面顯示目前網站IP
6. 如要修改IP位址，請使用root權限輸入/root/ipconfig.sh，依照提示填寫IP設定資訊

