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

1. Create a conda environment: `conda create -n venv_name pip matplotlib numpy scipy sympy pandas networkx`
2. Find the anaconda directory and venv folder. It could look something like this: `/anaconda3/envs/venv_name/`
3. Install Jupyter Book : `/anaconda3/envs/venv_name/bin/`

### Building a Jupyter Book

Run the following command in your terminal: `jb build book/`.
If you would like to work with a clean build, you can empty the build folder by running `jb clean book/`. If the jupyter execution is cached, this command will not delete the cached folder. To remove the build folder, you can run `jb clean --all book/`.

### Publishing this Jupyter Book

Run `ghp-import -n -p -f book/_build/html`

If you are working on improving the `quantecon-example`, the publishing of your work is taken care by Github workflows.