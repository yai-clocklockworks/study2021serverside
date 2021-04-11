echo '################################'
echo '# rbenv install                #'
echo '################################'
sudo yum install -y git gcc openssl-devel readline-devel zlib-devel sqlite-devel gcc-c++ libicu-devel cmake vim
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile

echo '################################'
echo '# rbenv --version              #'
echo '################################'
rbenv --version

echo '################################'
echo '# ruby install plugin          #'
echo '################################'
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

echo '################################'
echo '# ruby install                 #'
echo '################################'
rbenv install 2.6.7
rbenv global 2.6.7
rbenv rehash

echo '################################'
echo '# bundle install               #'
echo '################################'
gem install bundler
rbenv rehash

echo '################################'
echo '# Ruby on Rails install        #'
echo '################################'
gem install rails
# $ rails new feedListApp
# $ cd app
# $ bundle install

echo '################################'
echo '# webpacker install            #'
echo '################################'
# $ sudo yum install https://rpm.nodesource.com/pub_12.x/el/7/x86_64/nodesource-release-el7-1.noarch.rpm -y
# $ sudo yum install nodejs -y
# $ sudo npm install -g yarn
# $ rails webpacker:install

echo '################################'
echo '# firewalld.service            #'
echo '################################'
# $ sudo systemctl stop firewalld.service
# $ sudo systemctl mask firewalld.service
# $ sudo systemctl list-unit-files | grep firewalld

echo '################################'
echo '# rails server                 #'
echo '################################'
# $ rails s -b 0.0.0.0
# `http://localhost:3000`

echo '################################'
echo '# SQLite install               #'
echo '################################'
# curl -O https://www.sqlite.org/2021/sqlite-autoconf-3350400.tar.gz
# tar -xzvf sqlite-autoconf-3350400.tar.gz
# cd sqlite-autoconf-3350400
# ./configure --prefix=/opt/sqlite/sqlite3
# make
# sudo make install
# gem install sqlite3 -- --with-sqlite3-include=/opt/sqlite/sqlite3/include --with-sqlite3-lib=/opt/sqlite/sqlite3/lib
