echo "iniciando setup"

echo "abrindo github"
google-chrome https://www.google.com > /dev/null 2>&1 &

echo "abrindo editor"
code > /dev/null 2>&1 &

echo "abrindo whatsapp"
google-chrome https://web.whatsapp.com/ > /dev/null 2>&1 &

# echo "abrindo skype"
# skypeforlinux > /dev/null 2>&1 &

echo "iniciando docker"
docker start postgresql && docker start mysql-db > /dev/null 2>&1 &

echo "update system"
sudo apt update && sudo apt upgrade -y && exit > /dev/null 2>&1 &