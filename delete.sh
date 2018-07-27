#!/bin/bash
#Script to remove user SSH & OpenVPN

read -p "Name user SSH which will be deleted: "Users

if getent passwd $Users > /dev/null 2>&1; then
        userdel $Users
        echo -e "User $Users has been deleted."
else
        echo -e "FAILED: User $Users does not exist"
fi
