# create python venv named venv
python -m venv ./venv

# activate venv
source venv/bin/activate

# upgrade pip
pip install --upgrade pip

# install project dependencies
cat requirements.txt | sed -e '/^\s*#.*$/d' -e '/^\s*$/d' | xargs -n 1 python -m pip install
