CREATE USER 'slurp'@'localhost' IDENTIFIED BY '**********';
GRANT USAGE ON * . * TO 'slurp'@'localhost' IDENTIFIED BY '**********' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

CREATE DATABASE IF NOT EXISTS `slurp` CHARACTER SET utf8 ;
GRANT ALL PRIVILEGES ON `slurp` . * TO 'slurp'@'localhost';

flush privileges;