case $1 in

--frush)
    rm -rf ~/.Trash/*
    ;;

--help|help|h|-h)
    echo
    echo "dm --flush ... throw file into Trash"
    echo "dm --help  ... show help menu"
    echo
    ;;

*)
    for arg in $@
    do
        if [[ "$arg" =~ "-"* ]]; then
            echo "removed: $arg"
            mv $arg ~/.Trash
        fi
    done
    ;;

esac
