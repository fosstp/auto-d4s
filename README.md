# auto-drupal

fosstp 臺北市自由軟體推動小組--自動安裝校園網站Drupal 指令集<br><br>

請先確認您的環境：<br>
1.必須為 Debian/Ubuntu 或 RedHat/CentOS 等 linux 作業系統 (實體機或虛擬機皆可)<br> 
  (建議全新安裝一個最小化linux，若不是全新安裝請先移除原本的網頁伺服器與Mysql伺服器避免衝突)<br>
2.必須已經設定好網路，能夠上網<br>
3.使用系統管理員root權限，執行下列指令進行自動化安裝程序，並於安裝程序中依照提示輸入相關資料<br>
<br>
<br>------------------------------------------------------------------------------------------------------------------<br>
如果您是使用Debian/Ubuntu系統<br>
請使用系統管理員root權限，執行底下指令<br><br>
wget -O auto-drupal.sh https://raw.githubusercontent.com/fosstp/auto-d4s/master/auto-drupal.sh;chmod +x auto-drupal.sh;./auto-drupal.sh
<br>------------------------------------------------------------------------------------------------------------------<br>
<br>如果您是使用RedHat/CentOS系統<br>
請使用系統管理員root權限，執行底下指令<br><br>
yum -y install wget;wget -O auto-drupal.sh https://raw.githubusercontent.com/fosstp/auto-d4s/master/auto-drupal.sh;chmod +x auto-drupal.sh;./auto-drupal.sh
<br><br><br>-------!!!Qnap/Synology使用之Script因人力有限已不再維護，有需求者請自行下載修改!!!------------<br>
<br>如果您是使用Qnap/Synology系統<br>
1.請確認已經安裝Docker (Qnap的Container Station) (Synology的Docker套件)<br>
2.使用最高權限登入SSH命令列畫面 (Qnap使用admin) (Synology使用root)<br>
3.執行底下指令<br><br>
curl -kO https://raw.githubusercontent.com/liao-chianan/auto-drupal/master/autodrupal-qnap-synology.sh ;chmod +x autodrupal-qnap-synology.sh;./autodrupal-qnap-synology.sh
