#!bin/bash
cat >> users << EOL
user1
user2
user3
user4
user5
user6
EOL
for i in `cat users`
do
useradd $i

#echo $i
echo $i | passwd –-stdin "$i"
echo; echo "User $username’s password changed!"
done

