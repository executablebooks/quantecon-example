# quantecon-example
A demonstration of Jupyter Book functionality using QuantEcon Python programming source material.

## How to create your own Jupyter Book

For the purposes of this project, we are replicating the content under [Python Programming for Quantitative Economics](https://python-programming.quantecon.org). To demonstrate at a high level what has been done, we first convert each source file from rST to MyST-syntax markdown, then build the book by following the instructions in the [Books with Jupyter documentation](https://beta.jupyterbook.org/intro.html). 

### Converting documents from rST to MyST-syntax markdown
1. Convert from rST to markdown using `Pandoc`. See `./rst_to_md.sh`.
2. Update and add MyST syntax:
	- Manual: math labels are removed during conversion through `Pandoc`. For this reason, it is essential to go over the documents and make sure no math label is missing in the newly generated markdown files.
	- Programmatic soluiton: there are a few options by utilizing regex. Below is an example of a simple function to convert contents depth syntax from rST to MyST.
3. [This repository](https://github.com/najuzilu/myst-parser.example-project) contains an incomplete list of issues. As previously stated, some of these issues can be fixed programmatically if we aim to focus on conversion issues pertaining to QuantEcon lectures.

```python
def get_contents_depth(string):
	r"""
	Replace contents depth directives in rST to MyST syntax.

	Paramater
	---------
	string: String
		String which could containt the rST syntax regarding contents depth
	"""
	oldSyntax = "::: {.contents}\n\ndepth\n\n:   2\n:::"
	newSyntax = "``` {contents}\n---\ndepth: 2\n---\n```"
	# If found
	if (string.find(oldSyntax) != -1):
		string = string.replace(oldSyntax, newSyntax)
```

### Creating an environment

1. Clone the following repositories: [cli](https://github.com/ExecutableBookProject/cli), [MyST-NB](https://github.com/ExecutableBookProject/MyST-NB), [sphinx-book-theme](https://github.com/ExecutableBookProject/sphinx-book-theme)
2. `conda create -n venv_name pip matplotlib numpy scipy sympy pandas networkx`
3. Activate conda environment
4. Find anaconda directory and fin the venv folder. It could look something like this: `/anaconda3/envs/venv_name/`
5. For each of the cloned repositories run the following: `/anaconda3/envs/venv_name/bin/pip install -e.`

### Building a Jupyter Book

Run the following command in your terminal: `jb build book/`. Currently you will see the following errors during build:

```
raise TimeoutError("Cell execution timed out")
TimeoutError: Cell execution timed out
```