# gcc
apt-get -y install gcc

# pwntools
apt-get update
apt-get -y install python3 python3-pip python3-dev git libssl-dev libffi-dev build-essential
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade git+https://github.com/Gallopsled/pwntools.git@dev

# gdb
apt-get gdb

# peda
git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit

# heapinfo
cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git 
cp ~/Pwngdb/.gdbinit ~/

# one_gadget
apt-get -y install ruby-dev
gem install one_gadget

# seccomp-tools
gem install seccomp-tools