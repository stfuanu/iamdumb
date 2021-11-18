awk

cp

mv 
tree

history (ctrl+R)
hist

rmdir <empty dirs only>

ps / top /htop

cut

echo "anu" | sed 's/n/kk/g'

sleep + time + top/htop 
echo $?
0=success
2=error
1=not success

read -p
split -n l/3 file.txt
find . | xargs -I GG ls -lt GG
pwgen 10 10 | grep . --colour=never 

split -l200 tuxlap.txt
split -b2000000 tuxlap.txt
split  {file_name}  {prefix_name}


&& || & (AND,OR,background)

ls <doesntexist> && echo Success || echo Failed

ctrl+c , ctrl+z , ctrl+l , ctrl+shift+x

whoami
whois
uname -a 

xargs 
parallel


find ./GFG -name *.txt 
find ./GFG -perm 664
find ./GFG -empty
find ./GFG -name sample.txt -exec rm -i {} \; 




seq 5 | xargs -I AA cp file.a fileAA.a


$=non-root , #=root

free -h

grep

sed '/DELETE/d'
echo "abcS" | sed 's/s/h/gI'


cat *
cd */djsj*/

at

find

reset
clear

gre<TAB> (autocomplition)

sed 's/^.*$/<-- & --->/'

curl

tee 

echo "or cat stdin" | nano -
echo "or cat stdin" | vim -
alias

clear/reset

apt-get install jq
apt show htop

Bash Functions (with arguements)

for loops / while loop

split 

sed

wget
xdg-open

for i in `seq 60 -1 1` ; do echo -ne "\r$i " ; sleep 1 ; done

2&>\dev\null

>> redirect ,  > overwrite , >| force
set -o noclobber

dig

jq

shuf -n 1 -i 0-99

shuf -n 5 /usr/share/dict/words

echo 5^23 | bc
echo 5-3 | bc

source .bashrc
