# iamdumb



```bash
# Aliases :

alias zcname="zdns CNAME --name-servers 8.8.8.8,8.8.4.4 -threads 50 -retries 2 | jq -r '.data.answers[] | [.name,.type,.answer] | @tsv' 2> /dev/null"
alias zstatus="zdns A --name-servers 8.8.8.8,8.8.4.4 -threads 50 -retries 2 | jq -r '[.name ,.status] | @tsv' 2> /dev/null"
```


```console

lscpu

ps fauxww

pidof firefox
kill -9 $(pidof firefox)

shopt -s expand_aliases

cat /proc/cpuinfo | grep processor

free -h

echo "SOOO_MUCH_DATAAAAA" | ssh root@404.404.404.404 "cat - | tee -a ~/remote_file.txt "

tail -f <filename>/*

cp {file1,file2,otherfile{1,2},otherrandomfile21} FOLDER_NAME/

watch -n 0.1 "netstat -an | grep -E ':80|:8080'"

watch cat <filename>/*

df -Th /dev/vda1

service tor reload && curl -socks5 127.0.0.1:9050 http://checkip.amazonaws.com/

at --help

lsof -t -i:<port>

kill -9 $(lsof -t -i:<port>)

bash Drop_Nuke_On_My_College.sh | at now + 69 minute

gdisk -l /dev/vda

netstat -ntlp


tr '[:upper:]' '[:lower:]'

is:issue commenter:<GITHUB_USERNAME>

echo "some shit here" >| existornot_will_be_overriden_file.txt

cat messedupstuff.txt | column -t -s $'\t'

apt install silversearcher-ag

https://github.com/github/linguist/blob/master/lib/linguist/languages.yml

cat commands.txt | bash

sed -e "s/^M//" filledwithbinaryctrlMcrap.txt > withoutcrap.txt

sudo -s <foo.txt

nohup --help

cat 1000_lines.txt | sort -uR | head/tail -n 69 | wc

root@FjypPU9EfdoF:~# echo "Today is $date"
Today is
root@FjypPU9EfdoF:~# echo "Today is $(date)"
Today is Sat Apr 24 16:43:24 UTC 2021


root@stfu:~# cat 1000_lines.txt | tail -n 100 | wc
    100     100    1410


ctrl+alt+,

pv -t

watch --help

go env -w GO111MODULE=auto

service cron reload

```

```bash
foo()
{
    echo "Hello World!"
}
export -f foo   # export ~/.bashrc functions to scripts

yes | /your/command # (Answer yes in a bash script)

```


