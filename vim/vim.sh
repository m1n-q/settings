git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;


vim +PluginInstall +qall


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugInstall +qall

git clone https://github.com/sainnhe/everforest.git


git clone --depth 1 https://github.com/sainnhe/everforest.git

cd everforest
cp ./autoload/everforest.vim ~/.vim/autoload/
cp ./colors/everforest.vim ~/.vim/colors/
cp ./autoload/airline/themes/everforest.vim ~/.vim/autoload/airline/themes/
