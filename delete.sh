#!/bin/bash
#Script to remove user SSH & OpenVPN

read -p "Name user SSH which will be deleted: " Users

if getent passwd $Pengguna > /dev/null 2>&1; then
        userdel $Pengguna
        echo -e "User $Pengguna has been deleted."
else
        echo -e "FAILED: User $Pengguna does not exist"
fi
