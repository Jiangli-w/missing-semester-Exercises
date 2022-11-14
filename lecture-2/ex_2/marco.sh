marco(){
    echo $(pwd)>/home/jiangli/marco_history.txt
}

polo(){
    cd "$(cat /home/jiangli/marco_history.txt)"
}