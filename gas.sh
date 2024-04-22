#!/bin/bash
                                   
echo "\n\n";
echo "\033[34m ░▒▓██████▓▒░ ░▒▓██████▓▒░ ░▒▓███████▓▒░ \033[0m";
echo "\033[34m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░       \033[0m";
echo "\033[34m░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░ \033[0m";
echo "\033[34m░▒▓█▓▒▒▓███▓▒░▒▓████████▓▒░░▒▓██████▓▒░  \033[0m";
echo "\033[34m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ \033[0m";
echo "\033[34m░▒▓█▓▒░░▒▓█▓▒░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░ \033[0m";
echo "\033[34m ░▒▓██████▓▒░░▒▓█▓▒░░▒▓█▓▒░▒▓███████▓▒░  \033[0m\n\n";
                                                                                                                 echo "\033[36mTool ini dibuat untuk dedikasi kepada \nKalian semua para korban penipuan \nUNDANGAN PERNIKAHAN \nSiap untuk memulai ?\033[0m \n\n";

read -p ">> Masukkan ID Chat kang Tipu: " ID
read -p ">> Masukkan TOKEN Kang Tipu: " TOKEN
read -p ">> Isi pesanmu: " MESSAGE
read -p ">> Mulai Pembalasan ? (y/n): " confirm

if [ "$confirm" = "y" ]; then


echo "\033[1m \n PEMBALASAN DIMULAI \033[0m \n";

while true
sleep .2
do	curl -s -X POST \
		-H 'Content-Type: application/json' \
		-d '{"chat_id": "'"${ID}"'", "text": "'"${MESSAGE}"'", "disable_notification": true}' \
		https://api.telegram.org/bot$TOKEN/sendMessage;
	echo '\033[31m \n\n'$(date)' \033[0m'

done

else
	sh gas.sh;
fi
