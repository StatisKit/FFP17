source activate root

git add -A
git commit -a -m 'Update'
git pull
git push

conda env remove -n FFP17
rm -rf ~/.miniconda/pkgs
mkdir ~/.miniconda/pkgs
conda env update -f environment.yml
source activate FFP17

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
