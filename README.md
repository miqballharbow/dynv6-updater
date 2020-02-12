# dynv6-updater
only for https://dynv6.com.

## Usage

change directory or you can custom $PWD :
```bash
sudo cd ~/
```

clone this repository :
```bash
git clone miqballharbow/dynv6-updater
```

execute "crontab" :
```bash
crontab -e 
```

copy this text and paste it at the bottom of the crontab : 
```crontab
*/1 * * * * ~/dynv6-updater/update.sh @your-domain @your-token 2>&1
```
