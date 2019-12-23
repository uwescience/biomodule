#! /bin/bash
# arg1: name-of-environment
if [ -z "$1" ]
then
      echo "Usage: 'setup.sh <env name>'"
      echo "       Defaulting to 'biomodule'"
      NAME="biomodule"
else
      NAME=$1
fi
# Setup for project
conda config --set always_yes yes --set changeps1 no
conda update --quiet conda
conda info --all
conda env create --quiet --name ${NAME} --file environment.yml
pip install tellurium
echo "**Use 'conda activate ${NAME}' to enter environment"
echo "  Use conda deactive to leave environment"
