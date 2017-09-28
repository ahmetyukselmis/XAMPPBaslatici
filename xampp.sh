while test $# -gt 0; do
        case "$1" in
                -y|--yardim)
                        echo "Secenekler:"
                        echo "-b, --basla       XAMPPi başlat"
                        echo "-d, --durdur      XAMPPi durdur"
			echo "-r, --restart     Tekrardan başlat"
                        exit 0
                        ;;
                -b|--basla)
                       	sudo /opt/lampp/lampp start
                        shift
                        ;;
                -d|--durdur)
                        sudo /opt/lampp/lampp stop
                        shift
                        ;;
		-r|--restart)
                        sudo /opt/lampp/lampp restart
                        shift
                        ;;
                *)
                        break
                        ;;
        esac
done
