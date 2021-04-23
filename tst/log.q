\l src/log.q

assert:{if[not x~y;'`$"expecting '",(-3!x),"' but found '",(-3!y),"'"]}
assert[(enlist"0";"64";"64M")].log.mem 360640 67108864 67108864 0 0 8589934592
assert[5]count .log.dtm[]
