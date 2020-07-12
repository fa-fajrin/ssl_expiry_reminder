# ssl_expiry_reminder
This is a simple bash script to send a notification if my SSL certificate will be expire on 30 days or already expired to Telegram using Telegram bot. To get more information about Telegram bot, you can visit [here](https://core.telegram.org/bots/api "here"). I put this script in Crontab so it will run based on cron scheduler.

### How to use this script

1. Download the script

   `$ git clone https://github.com/fa-fajrin/ssl_expiry_reminder.git`

2. Change variable of TOKEN and ID. You can get your own Telegram token after you successfully created a bot in Telegram

3. Put the script in your favorite path directory for example I try to put in my home directory

   `$ mv ssl_expiry_reminder ~/ssl_reminder.sh`

4. Change the file permission so it can be executed if we running in Crontab

   `$ chmod +x ~/ssl_reminder.sh`

5. Run it via Crontab. You can set the schedule when this script will be execute by Crontab as you want.
