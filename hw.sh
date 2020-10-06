echo 'Working directory'
read dirname 
if [ -n "$dirname" ]
then
    cd $dirname
    if [ $? -ne 0 ]
    then
        `echo "Cannot change directory to %dirname"`
        exit 1
    fi
fi

for dir in *
do
    newname=`echo $dir | tr "[a-z] [A-Z]" "[A-Z] [a-z]"`
    mv $dir $newname
done
