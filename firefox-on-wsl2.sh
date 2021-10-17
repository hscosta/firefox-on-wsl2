sudo apt update

# Install any dependencias for good work 
sudo apt install libgtk-3-0 libdbus-1-3 libdbus-glib-1-2

# Verify if directory exist and download Firefox 
if [[ ! -d $HOME/bin ]]
then
    echo "\n\nDiretório 'bin' não existe e será criado prá receber os binários"
    echo "a serem instalados: ..."
    mkdir $HOME/bin
    echo "-> Diretório 'bin' criado com sucesso!"
fi

wget -c https://download-installer.cdn.mozilla.net/pub/firefox/releases/93.0/linux-x86_64/pt-BR/firefox-93.0.tar.bz2 \
     -O $HOME/bin/firefox-93.0.tar.bz2

# Uncompress the Firefox
tar -xjvf $HOME/bin/firefox-93.0.tar.bz2 --directory $HOME/bin

# Create alias for run 
echo -e 'alias firefox="~/bin/firefox/firefox > /dev/null 2>&1 &"' >> ~/.bashrc