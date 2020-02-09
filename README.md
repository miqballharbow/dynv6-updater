crontab -e 

copy this text and paste it at the bottom of the crontab
*/1 * * * * ~/dynv6-updater/update.sh @your-domain @your-token 2>&1


