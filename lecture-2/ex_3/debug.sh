for((i=1;;i++))
do
    ./test.sh 2>out.txt
    if [ $? != 0 ]; then
        echo "failed after $i times"
        cat out.txt
        break
    
    echo "$i times"
    fi
done
