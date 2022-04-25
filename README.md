# egg-jianghu-demo02

## Start

1. npm install
   ```bash
   npm i
   ```
2. 复制 `config.local.example.js` 为 `config.local.js`
3. 并且修改数据库配置为自己的数据库, 例如：
   ```bash
   host: '127.0.0.1',
   port: 3306,
   user: 'root',
   password: '123456',
   database: 'jianghujs_demo_basic_3table'
   ```
4. 启动 npm run dev

## 数据库

```sql
# 数据库初始化
create database `jianghujs_demo_basic_3table` default character set utf8mb4 collate utf8mb4_bin;
use jianghujs_demo_basic_3table;
# 运行 sql/init.sql 文件
```

## 端口

7002

## 测试账号 & 测试环境

- W00001/123456
- W00002/123456
- G00001/123456
- G00002/123456
- H00001/123456
- H00002/123456

## FAQ

- egg-jianghu mysql view
```sql
DROP VIEW IF EXISTS `_view01_user`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `_view01_user` AS select * from `_user`;
```
