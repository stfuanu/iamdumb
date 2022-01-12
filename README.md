# iamdumb


```console

lscpu

ps fauxww

date -d "$(echo 07_01_2022-01:16:12 | sed -E 's/_/\//g ; s/-/ /g')" +"%s"

echo stfuanu | sed -E 's/.*/prefix-&-suffix/'

ps aux | grep -ie something | awk '{print $2}' | xargs kill -9

shopt -s expand_aliases

cat /proc/cpuinfo | grep processor

free -h

[[ $(echo "take" | grep  "take") ]] && echo yes || echo no

git ls-files

echo "SOOO_MUCH_DATAAAAA" | ssh root@404.404.404.404 "cat - | tee -a ~/remote_file.txt "

tail -f <filename>/*

stdbuf -i0 -o0 -e0 command
longrunprintstuff | stdbuf -oL -eL command

cp {file1,file2,otherfile{1,2},otherrandomfile21} FOLDER_NAME/

watch -n 0.1 "netstat -an | grep -E ':80|:8080'"

watch cat <filename>/*

df -Th /dev/vda1

service tor reload && curl -socks5 127.0.0.1:9050 http://checkip.amazonaws.com/

at --help

lsof -t -i:<port>

tail -n 100 cron.log | sponge cron.log

kill -9 $(lsof -t -i:<port>)

bash Drop_Nuke_On_My_College.sh | at now + 69 minute

echo "Show this forward and in reverse" | pee cat rev

gdisk -l /dev/vda

netstat -ntlp

git submodule add <PvtGitUrl> <path/name>

tr '[:upper:]' '[:lower:]'

is:issue commenter:<GITHUB_USERNAME>

ssh stfuanu@120.0.0.1 'bash -s' < testscript.sh
ssh root@MachineB 'echo "rootpass" | sudo -Sv && bash -s' < local_script.sh
ssh root@MachineB ARG1="arg1" ARG2="arg2" 'bash -s' < local_script.sh
echo "password" | ssh user@server 'sudo --prompt="" --stdin bash -s' < local.sh

StrictHostKeyChecking=accept-new (canbeaddedto:~/.ssh/config_butdon't)
ssh -o StrictHostKeyChecking=(accept-new/no) user@host

echo "some stuff here" >| existornot_will_be_overriden_file.txt

cat messedupstuff.txt | column -t -s $'\t'

apt install silversearcher-ag

apt-get install moreutils

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

pidof firefox
kill -9 $(pidof firefox)
killall -9 firefox
killall -u stfuname

htop
TAB+RIGHT_ARROW (to scroll)

curl -sS -k https://isitonaws.com/discover?name=aws.data.domain.com > aws.html
cat aws.html | grep -oP "Region: </td><td align=\"left\">[-a-z0-9]{3,30}" | awk -F '>' '{print$NF}'
cat aws.html | pup 'tr:nth-child(1) td:nth-child(2) text{}'

curl -LOs https://archive.org/download/ia-pex/ia && chmod +x ia && mv ia /usr/bin/ia && ia --help

dig +trace @8.8.8.8 wfmnaptnpc.starbucks.com
dig @8.8.8.8 +nocmd wfmnaptnpc.starbucks.com cname +noall +answer


```

```bash
# Storing a json object as Variable to use it later when multiple levels deep
echo "google.com" | zdns NS --name-servers 8.8.8.8:53,8.8.4.4:53 -threads 20 -retries 2 | \
jq -r ' .status as $stat | .data | select(.answers[0].type=="NS") | .answers[]  | [.name,$stat,.type,.answer]| @tsv '
```


```bash
foo()
{
    echo "Hello World!"
}
export -f foo   # export ~/.bashrc functions to scripts

yes | /your/command # (Answer yes in a bash script)

gpush(){
	[[ ! -f ".git/config"  ]] && echo -e "$rred Not Found : .git/config $nc" && return 1
	[[ "$1" == "-m" && ! -z "$2" ]] && git commit -m "$2"
	name=$(cat .git/config | grep "url =" | awk -F "github.com/" '{print$2}')
	git push https://$gitpush@github.com/$name
}

```


```bash
# Aliases :

alias clsram='echo 3 > /proc/sys/vm/drop_caches &&  swapoff -a &&  swapon -a'
alias ports='netstat -plant'
alias noc="sed 's/\x1B\[[0-9;]\{1,\}[A-Za-z]//g'"
alias sbash="source ~/.bashrc"
alias size='du -shc'
alias tim='echo $(date +%d_%m_%Y-%H:%M:%S.%N)'


alias zcname="zdns CNAME --name-servers 8.8.8.8,8.8.4.4 -threads 50 -retries 2 | jq -r '.data.answers[] | [.name,.type,.answer] | @tsv' 2> /dev/null"
alias zstatus="zdns A --name-servers 8.8.8.8,8.8.4.4 -threads 50 -retries 2 | jq -r '[.name ,.status] | @tsv' 2> /dev/null"

```

```bash
tr '[:upper:]' '[:lower:]' < input.txt > output.txt
awk '{ print tolower($0) }' input.txt > output.txt
awk '{ print toupper($0) }' input.txt > output.txt
sed -e 's/\(.*\)/\L\1/' input.txt > output.txt

shuf -i 1-1000
split -n l/<No.of_Files>[3] 1000_lines.txt #("3" Files With 333 Lines each)
split -l <No.Of_Lines>[150] 1000_lines.txt #(6 Files with 150 Lines each + 1 file of 100 Lines)

```
