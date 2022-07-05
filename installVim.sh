sudo apt-get install vim > /dev/null
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/.vimrc ~/.oldVimrc
cp vimrc ~/.vimrc 
