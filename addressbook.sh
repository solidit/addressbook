yum -y update
yum -y install httpd php mysql php-mysql
chkconfig httpd on
/etc/init.d/httpd start
cd /var/www/html
wget https://s3.amazonaws.com/romuloaddressbook/index.php

echo '<?php $RDS_URL="addressbook.cvvjhkixywm1.us-east-1.rds.amazonaws.com"; $RDS_DB="addressbook"; $RDS_user="addressbook"; $RDS_pwd="addressbook123"; ?>' > rds.conf.php