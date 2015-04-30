#!/bin/bash -x

git config --global user.name bil-t
git config --global user.email bil-t@users.noreply.github.com

cd
pwd

#rbenv installation
if [ ! -d "$HOME/.rbenv" ]; then
	git clone git://github.com/sstephenson/rbenv.git .rbenv
	echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
	echo 'eval "$(rbenv init -)"' >> ~/.bashrc
	git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build	
fi

export PATH="~/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

#ruby installation
if [ ! -d "$HOME/.rbenv/versions/1.9.3-p0" ]; then
	rbenv install 1.9.3-p0
	rbenv global 1.9.3-p0
	gem install bundler
	rbenv rehash
	ruby --version
fi

#switch to synced folder
cd /vagrant

#clone octopress and merge it with the parent git project
if [ ! -d "/vagrant/source" ]; then
	git clone git://github.com/imathis/octopress.git octopress
	rm -Rf octopress/.git
	shopt -s dotglob
	mv octopress/* .
	#git config for vagrant files
	echo '.vagrant' >> .gitignore
	echo '*.sh text eol=lf' >> .gitattributes

	#bind server to all inetrfaces
	sed -i.bak '/^server_port/a server_host     = "0.0.0.0"   # server bind address for preview server' Rakefile
	sed -i.bak 's/rackup --port #{server_port}/rackup --host #{server_host} --port #{server_port}/g' Rakefile
	#install dependencies
	bundle install
	#install default theme
	rake install
fi

if [ ! -d "/vagrant/_deploy" ]; then
	#install dependencies
	bundle install	
	#setup github pages
	rake setup_github_pages["https://github.com/bil-t/bil-t.github.io"]	
    git checkout . 
    cd _deploy    
	git pull -s recursive -Xtheirs --no-edit origin master
    cd ..
fi