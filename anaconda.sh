#!/usr/bin/env bash

# ~/anaconda.sh

# Removed user's cached credentials
# This script might be run with .dots, which uses elevated privileges
sudo -K

echo "------------------------------"
echo "Setting up anaconda."

brew cask install --appdir="/Applications" anaconda

bash ~/anaconda.sh -b -p $HOME/anaconda
export PATH="$HOME/anaconda/bin:$PATH"


echo "------------------------------"
echo "Setting up virtual environments."


###############################################################################
# dt-env Python 2 Virtual Enviroment                                          #
###############################################################################
echo "------------------------------"
echo "Setting up dt-env python 2.7 virtual environment."
conda create --name dt-env --file anaconda-spec-file.txt python=2.7

# Install also via pip because some package arent in anaconda
source activate dt-env
pip install -r pip-requirements.txt

###############################################################################
# Python 3 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up dt-env python 2.7 virtual environment."
conda create --name py3 --file anaconda-spec-file.txt python=3.5
pip install -r pip-requirements.txt