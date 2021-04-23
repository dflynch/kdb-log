\d .log

lvl:3
unit:"BKMGTP"
mult:5(1024*)\1

mem:{@[string"i"$3#x%mult m;2;,;unit m:mult bin x 2]}       / used, heap and peak memory usage rounded to the nearest unit
dtm:{string[(.z.D;.z.T)],mem system"w"}                     / stub of the form (d)ate, (t)time, (m)emory
out:{if[x<=lvl;-1" "sv dtm[],(y;$[10h=type z;z;.Q.s1 z])]}  / prepend stub and print message

fatal:out[0;"[FATAL]";]
error:out[1;"[ERROR]";]
warn:out[2;"[WARN]";]
info:out[3;"[INFO]";]
debug:out[4;"[DEBUG]";]
