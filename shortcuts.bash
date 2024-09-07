#alias <name>=<path>

while [[ $# -gt 0 ]]; do
case "$1" in
--bash)
    if [[ $# -gt 1 ]]
    then
    $2
    shift 2
    else
    echo 'missing 1 argument after --bash'
    exit 1
    fi ;;

-cf)
    if [[ $# -gt 1 ]]
    then
    cat $2
    shift 2
    else
    echo 'missing 1 argument after -cf'
    exit 1
    fi ;;

-r)
  if [[ $# -gt 1 ]]
    then
    sudo rm -rf $2
    shift 2
    else
    echo 'missing 1 argument after -r'
    exit 1
    fi ;;

-l)
ls -al
shift 2 ;;

-p)
  if [[ $# -gt 1 ]]
    then
    ping $2
    shift 2
    else
    echo 'missing 1 argument after -p'
    exit 1
    fi ;;

*)
    echo -new.sh: $1: command not found 
    exit 1 ;;
esac
done
