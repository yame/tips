# 删除多个
```
$ redis-cli -n 0 keys "UC:COURSE:CATALOG:*" | xargs redis-cli -n 0 del
```