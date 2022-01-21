#!/bin/bash

mkdir meus-repos-git
chmod 777 meus-repos-git
cd meus-repos-git

repositorios=$(curl -s https://api.github.com/users/Vitaopb/repos | awk '/ssh_url/{print $2}' | sed 's/^"//g'| sed 's/",$//g')

for repos in $repositorios
do
      git clone $repos
done

