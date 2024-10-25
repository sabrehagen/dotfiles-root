# Enable passwordless sudo for sudo group users
echo '%sudo ALL=(ALL) NOPASSWD:ALL' > /etc/sudoers

# Add the first non-root user to the sudo group
usermod --append --groups sudo --shell /bin/zsh $(id -nu $(awk '/^UID_MIN/ {print $2}' /etc/login.defs))
