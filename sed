used to find and replace text in files in Linux / Unix shell


Use Stream EDitor (sed) as follows:

sed -i 's/old-text/new-text/g' input.txt

The s is the substitute command of sed for find and replace

It tells sed to find all occurrences of ‘old-text’ and replace with ‘new-text’ in a file named input.txt

Verify that file has been updated: more input.txt


The syntax is:

sed 's/word1/word2/g' input.file

## *bsd/macos sed syntax#

sed 's/word1/word2/g' input.file > output.file

sed -i 's/word1/word2/g' input.file

sed -i -e 's/word1/word2/g' -e 's/xx/yy/g' input.file

## use + separator instead of / ##



[root@ip-172-31-25-152 tamil]# cat file
apple

Orange

apple


sed 's/apple/banana/g' file


It will only show the output but not updated


[root@ip-172-31-25-152 tamil]# sed 's/apple/banana/g' file
banana

Orange

banana


[root@ip-172-31-25-152 tamil]# cat file
apple

Orange

apple


sed -i 's+regex+new-text+g' file.txt


cat file

apple 
orange
apple

> sed -i 's/apple/banana/g' file

> cat file

banana
Orange
banana

> sed -i '0,/apple/s/apple/banana/g' file
# cat file
banana
Orange
apple

# echo -e "apple\nOrange\napple" > file

# sed -i '2,/apple/s/apple/banana/g' file

# cat file
apple
Orange
banana

> echo -e "apple\nOrange\napple" > file

	Ø sed -i '2,/apple/s/apple/banana/g' file
apple
Orange
banana

echo -e "apple\nOrange\napple" > file

echo -e "apple\nOrange\nApple" > file

	Ø  sed -i 's/apple/banana/g' file

banana
Orange
Apple

	Ø  echo -e "apple\nOrange\nApple" > file
	
	Ø  sed -i 's/apple/banana/gI' file
banana
Orange
banana
-----------------------------------------------------------------------------------

echo -e "apple\nOrange\nApple" > file

[root@ip-172-31-25-152 tamil]# cat file
apple

Orange

apple

[root@ip-172-31-25-152 tamil]# sed 's/apple/banana/g' file
banana

Orange

banana

[root@ip-172-31-25-152 tamil]# cat file
apple

Orange

apple
