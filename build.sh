#!/bin/bash

if !(which btormc >/dev/null); then
  echo "Installing btormc"
  git clone https://github.com/boolector/boolector 
  cd boolector
  ./contrib/setup-lingeling.sh
  ./contrib/setup-btor2tools.sh
  ./configure.sh && cd build && make
  rsync -r ./bin/* /usr/local/bin
  echo "Done!"
  btormc -h
fi

# xchelper $1