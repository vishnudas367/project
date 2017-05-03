echo "no: of arg: $#"
if [ $# -eq 2 ]
then
echo "no: of arg: are given correctly"
else
echo "please check your arguments"
fi
count = $#
FILE=$1
if [ -f "$FILE" ]
then
echo "file $FILE exists"
else
echo "File $FILE not exists"
fi
un=$2
if grep -xq $un "$FILE"
then
echo "$un already exist"
else
echo "not present"
echo $un >> $FILE
fi
