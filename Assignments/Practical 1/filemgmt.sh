echo	 FILE MANAGEMENT SYSTEM
echo 	........................
echo Give the path of folder which contains some files.

cd /
read a
cd $a

echo Enter 1 to List files stored along with their sizes.
echo Enter 2 to Create files.
echo Enter 3 to Allow changes to files.
echo Enter 4 to Delete files.
echo Enter 5 to Move files between the directories.
read n

case "$n" in

	1) ls -s;;
	2) echo Enter the Name of file and write in the file.
	   read f
	   cat> $f;;
	3) echo Give path of folder to make changes in the files
	   read c
	   cd /
	   cd $c
	   echo Folder contain files:-
	   ls
	   echo Give the name of file you want to make changes
	   read d
	   echo "Enter 1 for allowing everyone to read and write."
	   echo "Enter 2 for allowing users and group to read and write."
	   echo "Enter 3 for alllowing only users to read and write."
	   read m
	   case "$m" in
		   1) chmod 777 $d;;
		   2) chmod 660 $d;;
		   3) chmod 700 $d;;
	   esac
	   echo Changes happened:-
	   ls -l;;
	4) echo Files are:-
	   ls
	   echo Enter no. of files you want to delete
	   read countt
	   for(( i=1 ; i<=$countt ; i++ ))
	   do
	   echo Give filename to delete
	   read e
	   rm -r $e
	   echo File $e is Deleted
	   echo Now files are:-
	   ls
	   done;;
	5) echo Enter the path of source directory from where you want to copy the files:
	   read p
	   echo Enter the path of destination directory to where you want to move the files:
	   read q
	   cd /
	   cd $p
	   echo Files of source dir are:-
	   ls

	   echo Enter no. of files you want to move.
	   read count
	   for(( i=1 ; i<=$count ; i++ ))
	   do
	   cd /
	   cd $p
	   echo Files of source dir are:-
	   ls
	   echo Enter the name of file you want to move
	   read name
	   mv /$p/$name  /$q
	   cd /
	   cd $q
	   echo content of destination dir $q now are:
	   ls
	   done ;;
esac
