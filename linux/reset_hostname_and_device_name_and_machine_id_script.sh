NEW_HOST_NAME="device"$RANDOM
sudo hostnamectl set-hostname --pretty $NEW_HOST_NAME
sudo hostnamectl set-hostname $NEW_HOST_NAME

sudo rm "/etc/machine-id"
sudo touch "/etc/machine-id"
sudo systemd-machine-id-setup
