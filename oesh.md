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

#python #profiling #venv #virtual-environment

