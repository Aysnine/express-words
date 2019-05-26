var express = require('express');
var router = express.Router();

// 初始化工具模块
var Knex = require('knex');
// 连接数据库
var knex = Knex({
  client: 'mysql',
  connection: {
    host: 'localhost', // localhost
    port: '3306',
    user: 'root',
    password: 'mysql2019',
    database: 'words'
  }
});

router.get('/', function (req, res, next) {
  // 返回给前端一个留言板列表
  knex
    .select('*')
    .from('words')
    .orderBy([
      { column: 'createdDate', order: 'desc' }
    ])
    .then(function (content) {
      res.json({ content });
    });
});

router.post('/', function (req, res, next) {
  // 接收前端的一条留言，并写入数据库
  const { content } = req.body
  knex
    .insert({ content })
    .into('words')
    .then(function (id) {
      res.json({ id });
    });
});

router.delete('/', function (req, res, next) {
  // 删除一条留言
  const { id } = req.query

  knex('words')
    .where('id', id)
    .del()
    .then(function (count) {
      // count: 删除的行数
      res.json({ count });
    })
});

module.exports = router;
