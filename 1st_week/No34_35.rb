# https://qiita.com/shuntaro_tamura/items/4016868bda604baeac3c

$ ps a | grep mysql

fumiro_yoshihara 76151   0.0  0.1  4693688  13528   ??  S    金05PM   0:36.65 /usr/local/Cellar/mysql@5.7/5.7.22/bin/mysqld --basedir=/usr/local/Cellar/mysql@5.7/5.7.22 --datadir=/usr/local/var/mysql --plugin-dir=/usr/local/Cellar/mysql@5.7/5.7.22/lib/plugin --log-error=yoshiwarashirounoMacBook-Pro.local.err --pid-file=/usr/local/var/mysql/yoshiwarashirounoMacBook-Pro.local.pid
fumiro_yoshihara 76052   0.0  0.0  4295984    304   ??  S    金05PM   0:00.03 /bin/sh /usr/local/Cellar/mysql@5.7/5.7.22/bin/mysqld_safe --datadir=/usr/local/var/mysql --pid-file=/usr/local/var/mysql/yoshiwarashirounoMacBook-Pro.local.pid
fumiro_yoshihara 39139   0.0  0.0  4276968    892 s003  S+   11:35AM   0:00.00 grep mysql

$ kill 76151