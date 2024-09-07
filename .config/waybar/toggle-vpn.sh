#!/bin/bash

# название интерфейса
INTERFACE="arch"  

# цвет символа
COLOR_GREEN="#A7C080"

# проверка статуса
check_vpn_status() {
    if sudo wg show "$INTERFACE" &>/dev/null; then
        echo "VPN|<span color=\"$COLOR_GREEN\"></span>"
    else
        echo "VPN|<span color=\"$COLOR_GREEN\"></span>"
    fi
}

# основная логика
case "$1" in
    toggle)
        if sudo wg show "$INTERFACE" &>/dev/null; then
            sudo wg-quick down "$INTERFACE"
            echo "VPN:OFF"
        else
            sudo wg-quick up "$INTERFACE"
            echo "VPN:ON"
        fi
        ;;
    status)
        check_vpn_status
        ;;
    *)
        echo "Usage: $0 {toggle|status}"
        exit 1
        ;;
esac

