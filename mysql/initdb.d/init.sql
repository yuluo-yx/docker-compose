// 默认root没有连接 此配置开放远程连接的权限
USE mysql;
GRANT ALL ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;
