# grepcidr
Simple bash script utilising grep to extract CIDR blocks from STDIN or file input.

## STDIN
```
cat file.txt
0.0.0.0/24
192.168.0.0/30
999.999.999.999/16
1.1.1.1

cat file.txt | grepcidr
0.0.0.0/24
192.168.0.0/30
```
