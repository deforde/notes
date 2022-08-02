# python

- Profiling a Python app:
`python -m cProfile -s cumulative -m my_app`

- Using a virtual env:
```
python3 -m venv .venv
source .venv/bin/activate
```

- Creating a virtual env for debugpy (required by nvim-dap-python):
```
mkdir ~/.virtualenvs
cd ~/.virtualenvs
python -m venv debugpy
debugpy/bin/python -m pip install debugpy pytest
```

- Markdown viewer:
```
python -m pip install grip
grip -b README.md
```

- Build PyPi pacakage:
```
python3 setup.py sdist
```

- Install deps from requirements.txt:
```
python3 -m pip install -r requirements.txt
```

- Example of basic setuptools config:
https://github.com/pypa/sampleproject

#python #profiling #venv #virtual-environment

