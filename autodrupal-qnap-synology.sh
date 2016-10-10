printf "\E[0;32;40m"
echo -e "臺北市自由軟體推動小組fosstp--自動化Drupal校園網站自動安裝程序--Qnap與Synology調整版\n"
printf "\E[0m"
echo " ========================================================"

printf "\E[0;35;40m"
echo -e "請先進行參數設定\n"
printf "\E[0m"
echo " ========================================================"
printf "\E[0;33;40m"
read -p "請輸入您要使用的mysql root密碼(Please enter your mysql root password): " mysql_pw

read -p "請輸入您要使用的drupal站台名稱(Please enter your drupal site-name): "  drupal_sitename

read -p "請輸入您要使用的drupal管理員密碼(Please enter your drupal admin password): "  drupal_admin_pw
printf "\E[0m"
echo " ========================================================"


printf "\E[0;35;40m"
echo  -n "開始進行mysql docker部署動作...."
printf "\E[0m"
echo " ========================================================"

docker run --restart=always  --name mysql -e MYSQL_ROOT_PASSWORD=$mysql_pw -e MYSQL_DATABASE=drupal  -d mysql/mysql-server
docker run --name mysqlwait --link mysql:mysql aanand/wait
docker rm mysqlwait

printf "\E[0;35;40m"
echo -n "開始進行drupal docker部署動作...."
printf "\E[0m"
echo " ========================================================"

docker run --restart=always  --name drupal --link mysql:db -p 8888:80 -p 4433:443 -d fosstp/drupal
printf "\E[0;35;40m"
echo -n "開始進行 drupal 站台自動化安裝作業...."
printf "\E[0m"
echo " ========================================================"

docker exec  drupal drush -y  site-install standard --clean-url=0 --site-name=$drupal_sitename --account-pass=$drupal_admin_pw --db-url=mysql://root:${mysql_pw}@db/drupal


printf "\E[0;35;40m"
echo -n "開始進行 drupal 中文化介面與校務模組安裝..."
printf "\E[0m"
echo " ========================================================"
docker exec  drupal cp /etc/php5/cli/php.ini  /usr/local/etc/php/
docker exec  drupal sed -i 's/memory_limit = -1/memory_limit = 256M/g' /usr/local/etc/php/php.ini
docker exec  drupal drush dl drush_language
docker exec  drupal drush dl l10n_update  
docker exec  drupal drush en -y l10n_update
docker exec  drupal drush language-add zh-hant 
docker exec  drupal drush language-enable zh-hant 
docker exec  drupal drush language-default zh-hant
docker exec  drupal curl -O https://ftp.drupal.org/files/translations/7.x/drupal/drupal-7.x.zh-hant.po
docker exec  drupal drush language-import zh-hant drupal-7.x.zh-hant.po
docker exec  drupal drush -y en locale translation views date calendar
docker exec  drupal drush -y en openid_provider simsauth sims_views sims_field gapps db2health openid_moe adsync  gevent thumbnail_link   xrds_simple
docker exec  drupal chown -R www-data:www-data /var/www/html/sites/default
docker exec  drupal chmod -R 755 /var/www/html/sites/default/files
docker restart drupal
echo " ========================================================"
printf "\E[0;32;40m"
echo -e "安裝結束 您可以使用下列網址測試drupal是否安裝成功  系統管理員帳號為 admin   密碼為"  $drupal_admin_pw "\n"
ifconfig  | grep 'inet addr:' | cut -d: -f2 | awk '{ print "http://"$1":8888/"}'
printf "\E[0m"
