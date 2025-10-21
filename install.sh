#!/bin/bash
if [ ! -d /etc/uni-pkg ]; then
    mkdir /etc/uni-pkg
fi
if [ -f /etc/uni-pkg/config.ini ]; then
    read -r -p "There is another Universe pacakger existed, do you want to overwrite it?(y/N) " input
    if [[ "$input" != "y" && "$input" != "Y" ]]; then
        echo Install abort.
	exit 1
    fi
fi
cp config.ini /etc/uni-pkg/
cp uni-pkg /usr/bin/
chmod 744 /etc/uni-pkg/config.ini
chmod 711 /usr/bin/uni-pkg
echo weLees Unified Packager installed.
echo "  Please mail to support@welees.com for any advise or problem. Thanks"
