# install zsh
apt-get -y install zsh

# set zsh to default shell
chsh -s /bin/zsh

# install oh-my-zsh
# if u use apt-get to install, it has been installed.
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zshrc
mv .zshrc ~/.zshrc

# install powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# auto suggestion
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

source ~/.zshrc