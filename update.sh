# bash update.sh

source activate root

conda env remove -n FFP17
conda clean --all -y
conda env update -f environment.yml
source activate FFP17

git add -A
git commit -a -m 'Update'
git pull
git push

# source activate statiskit-python

# set -ve

# cd STL
# git pull
# scons conda-install
# cd ..

# cd LinAlg
# git pull
# scons conda-install
# cd ..

# cd Core
# git pull
# scons conda-install
# cd ..

# cd PGM
# git pull
# scons conda-install
# cd ..

# set +ve
