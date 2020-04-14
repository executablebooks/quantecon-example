# quantecon-example

A demonstration of Jupyter Book functionality using QuantEcon Python
programming source material.

## How to create your own Jupyter Book

For the purposes of this project, we are replicating the content under [Python
Programming for Quantitative Economics](https://python-programming.quantecon.org). To demonstrate at a high
level what has been done, we first convert each source file from rST to
MyST-syntax markdown, then build the book by following the instructions in the
[Books with Jupyter documentation](https://beta.jupyterbook.org/intro.html). 


### Creating an environment

1. Clone the following repositories: [cli](https://github.com/ExecutableBookProject/cli), [MyST-NB](https://github.com/ExecutableBookProject/MyST-NB), [sphinx-book-theme](https://github.com/ExecutableBookProject/sphinx-book-theme)
2. `conda create -n venv_name pip matplotlib numpy scipy sympy pandas networkx`
3. Activate conda environment
4. Find anaconda directory and fin the venv folder. It could look something like this: `/anaconda3/envs/venv_name/`
5. For each of the cloned repositories run the following: `/anaconda3/envs/venv_name/bin/pip install -e.`

### Building a Jupyter Book

Run the following command in your terminal: `jb build book/`.

### Publishing this Jupyter Book

Run `ghp-import -n -p -f book/_build/html`
