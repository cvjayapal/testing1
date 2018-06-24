#!bin/bash
cat >> users << EOL
user9
user10
user11
user12
user13
user14
user15
user16
EOL
for i in `cat users`
do
useradd $i

#echo $i
echo $i | passwd –-stdin "$i"
echo; echo "User $username’s password changed!"
done

