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
echo "Setting up env2 python 2.7 virtual environment."
conda create --name env2 --file anaconda-spec-file.txt python=2.7

# Install also via pip because some package arent in anaconda
source activate dt-env
pip install -r pip-requirements.txt

###############################################################################
# Python 3 Virtual Enviroment                                                 #
###############################################################################

echo "------------------------------"
echo "Setting up env3 python 3.5 virtual environment."
conda create --name env3 --file anaconda-spec-file.txt python=3.5
pip install -r pip-requirements.txt


BASH_SETUP="
DEFAULT_ENV=\"env3\"
if [ -f \" ~/anaconda/etc/profile.d/conda.sh\" ]; then
    . \"~/anaconda/etc/profile.d/conda.sh\"
    CONDA_CHANGEPS1=false conda activate $DEFAULT_ENV
else
    \export PATH=\"~/anaconda/bin:$PATH\"
fi
"
echo $BASH_SETUP>> ~/.zshrc
echo $BASH_SETUP>> ~/.bash_profile
