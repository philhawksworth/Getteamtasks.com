<VirtualHost *:80>

    ServerName getteamtasks.com
    ServerAdmin phawksworth@gmail.com
  
    LogLevel warn
    ErrorLog /var/log/apache2/getteamtasks.com.error.log
    CustomLog /var/log/apache2/getteamtasks.com.access.log combined
    LogFormat "%h %l %u %t \"%r\" %>s %b \"%{Referer}i\" \"%{User-Agent}i \" \"%{Cookie}i\""

    <Directory /var/www/getteamtasks.com>
        Order deny,allow
        Allow from all
    </Directory>
    
    DocumentRoot /var/www/getteamtasks.com/
    
</VirtualHost>