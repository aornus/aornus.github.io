---
title: git pages自定义域名
date: 2022-01-21 20:21:11
tags:
---

# 域名申请

> 自由很好，免费也很好，自由免费就更好。--Sion tine

添加解析

| 类型  | 名称 |        值        |
| :---: | :--: | :--------------: |
|   A   |  @   | 185.199.108.153  |
|   A   |  @   | 185.199.109.153  |
|   A   |  @   | 185.199.110.153  |
|   A   |  @   | 185.199.111.153  |
| CNAME | www  | aornus.github.io |

# github配置

路径：Repository-->Settings-->pages-->Custom domin(自定义域)

输入域名 `aornus.tk`

解析成功：

```
╰─λ dig www.aornus.tk +noall +answer -t A
www.aornus.tk.          3600    IN      CNAME   aornus.github.io.
aornus.github.io.       3600    IN      A       185.199.108.153
aornus.github.io.       3600    IN      A       185.199.111.153
aornus.github.io.       3600    IN      A       185.199.109.153
aornus.github.io.       3600    IN      A       185.199.110.153
```

