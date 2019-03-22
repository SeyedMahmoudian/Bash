CST8102-15W  Lab2                               Name: Seyedamin Seyedmahmahoudian Section#310


Basic Linux Commands (Part 1)


Due date  

•	End of Week 3 lab class


Evaluation

•	3% of final grade.


Submission

Hand in or email (in email subject line: CST8102-15W lab2 submission)  completed lab before due date.

Materials
•	Student laptop computer
•	Ubuntu 14.04.1 installed in VMWare Workstation

Procedure

Exercise #1: Command  pwd
Read the man pages for pwd.
1)	man  pwd
Read the manual pages of pwd command
What is the purpose/output of pwd command?

Print name of current/working directory
2)	Press q to quit the manual pages of pwd.

Exercise #2: command  cd
Type the following command and press Enter
1)	cd
	this brings you into your home directory

Record the bash prompt: amin@ubuntue:~$
2)	pwd

Record the output of that command: /home/amin
3)	cd  ~
	this brings you into your home directory

Record the bash prompt: amin@ubuntue:~$

4)	pwd

Record the output of that command: /home/amin
5)	cd  /etc

Record the bash prompt: amin@ubuntu:/etc$
6)	pwd

Record the output of that command: /etc
7)	cd  ..
	this brings you one level up, in this case etc's parent directory, which is root directory

Record the bash prompt: amin@ubuntu:/$
8)	pwd
Record the output of that command: /
9)	cd  home/user   (use your actual username instead of “user)
Record the bash prompt: amin@ubuntu:~$
Note that we are using the relative path.
What would the command line look like if we were to use the absolute path?
cd /home/amin
10)	pwd

Record the output of that command: /home/amin

11)	cd  /usr/local/bin/

Record the bash prompt: amin@ubuntu:/usr/local/bin$

12)	pwd

Record the output of that command: /usr/local/bin

13)	cd  ../../sbin

Record the bash prompt: amin@ubuntu:/usr/local$

14)	pwd

Record the output of that command: /usr/local

15)	cd  /

Record the bash prompt: amin@ubuntu:/$

16)	pwd

Record the output of that command: /
17)  cd  bin

Record the bash prompt: amin@ubuntu:/bin$
Note that we are using the relative path. What would the command line look      
like if we were to use the absolute path?

cd /bin

18)  pwd

Record the output of that command: /bin

Exercise #3: command  ls
1)	ls  /bin/ls
2)	ls  /home/user
3)	ls  -a /home/user
4)	ls  -al /home/user
5)	ls /ho, then press the [Tab] key – the shell will fill in the rest of the file name for you.
Press the 'up arrow' key twice. You will notice that previously typed in commands can be recalled by using the arrow keys.



Exercise #4: command  more
Follow the steps outlined below:
1)	cd  /etc - to go into the /etc directory (lots of files in here!)
2)	ls  -la
3)	ls  -al | more - to view the contents one screen at a time
The piping capacity of Linux using the | symbol (Shift-\)

Use the [spacebar] to jump to the next screen of information
You can use q to abort the command
4)	cd /home

Exercise #5:  command  mkdir
1)	user@localhost :/home$ cd
o	What is the purpose of the cd command without arguments?
It went to my user
2)	user@localhost :~$ mkdir  cst8102 ; cd cst8102
3)	user@localhost :~/cst8102$ mkdir labs tests
4)	user@localhost :~/cst8102$ ls

o	What is the output of the above command?
labs    test
5)	user@localhost :~/cst8102$ mkdir labs/lab01 tests/test01
6)	user@localhost :~/cst8102$ ls labs tests
•	What is the output of the above command?
labs:
lab01

test:
test01

7)	user@localhost :~/cst8102$ mkdir  lectures/lecture01
o	Record the error message:    
mkdir: cannot create directory   ‘lectures/lectures01’: No such file or directory       
o	Explain why this command did not execute successfully:
because lecture01 parent directory did not exist , lectures therefore it is not able to create directory lecture01 inside the directory which it does not exits
8)	user@localhost :~/cst8102$ mkdir -p  lectures/lecture01
o	Did the command execute successfully?
Yes

Exercise #6: command rmdir

1)	user@localhost :~/cst8102$ ls  -l
o	What is the output of that command? (Give a description)
4)	It print all the files with their permission, their owner and person whom created and also print the date and the time of the file that has been created
o
2)	user@localhost :~/cst8102$ rmdir  tests
rmdir: failed to remove ‘test’ : Directory not empty

3)	user@localhost :~/cst8102$ ls  -l
total 12
drwxrwxr-x 3 amin amin 4096 Jan 15 17:30 labs
drwxrwxr-x 3 amin amin 4096 Jan 15 17:35 lectures
drwxrwxr-x 3 amin amin 4096 Jan 15 17:30 test

4)	user@localhost :~/cst8102$ cd  tests
5)	user@localhost :~/cst8102/tests$ rmdir  test01
6)	user@localhost :~/cst8102/tests$ cd ..
7)	user@localhost :~/cst8102$ rmdir tests
o	Does the command produce an error message?
No
8)	user@localhost :~/cst8102$ rmdir  lectures/lecture01
9)	user@localhost :~/cst8102$ rmdir  lectures
10)user@localhost :~/cst8102$ ls
•	Is lectures removed?
Yes




Review exercise

Enter the commands below in your home directory.


1.  mkdir ~/lab2
2.  cd lab2
3.  mkdir linux  ./windows  ./windows/win8
4.  mkdir linux/ubuntu  ./linux/fedora
5.  rmdir linux
6.  rmdir windows
7.  mkdir –p ~/lab2/linux/android/lollipop
8.  rmdir -p windows/win8
9.  cd windows
10. cd linux/android/lollipop
11. cd ../../../
12. pwd


Answer these questions based only on the above 12 commands:

1)  How many directories have you successfully deleted?

     1

     List them using absolute path:

/home/amin/lab2/windows/win8




2)  How many directories in total have you created? (Including deleted directories)

8

     List them by names:
Lab2
Linux
Windows
Win8
Ubuntu
Fedora
Android
Lollipop


3)  How many directories are left in the directory lab2?

     5

     List them using relative paths: (current  directory is user’s home directory)
	Linux
	Andrioid
Fedora
Ubuntu
Lollipop


   4)  How many error messages have you encountered?

    4

     Record the error message along with the command number (1-12):

       2) bash: cd: lsb2: No such file or directory
   5) rmdir : failed to remove ‘linux’: Directory not empty
   6) rmdir: failed to remove ‘windows’: Directory not empty
   9) cd: windows: No such file or directory



5)  Record the output of the command pwd :

     /home/amin/lab2/linux
