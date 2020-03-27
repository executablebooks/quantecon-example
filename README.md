# quantecon-example
A demonstration of Jupyter Book functionality using QuantEcon Python programming source material.

## How to create your own Jupyter Book

For the purposes of this project, we are replicating the content under [Python Programming for Quantitative Economics](https://python-programming.quantecon.org). To demonstrate at a high level what has been done, we first convert each source file from rST to MyST-syntax markdown, then build the book by following the instructions in the [Books with Jupyter documentation](https://beta.jupyterbook.org/intro.html). 

### Converting documents from rST to MyST-syntax markdown
1. Convert from rST to markdown using `Pandoc`. See `./rst_to_md.sh`.
2. Update and add MyST syntax:
	- Manual: math labels are removed during conversion through `Pandoc`. For this reason, it is essential to go over the documents and make sure no math label is missing in the newly generated markdown files.
	- Programmatic soluiton: there are a few options by utilizing regex. Below is an example of a simple function to convert contents depth syntax from rST to MyST.
3. [This repository](https://github.com/najuzilu/myst-parser.example-project) contains an incomplete list of issues we have run accross. As previously stated, some of these issues can be fixed programmatically if we aim to focus on conversion issues pertaining to QuantEcon lectures.

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

### Building a Jupyter Book

Follow [these](https://beta.jupyterbook.org/intro.html) instructions closely.

## Potential Issues

* Removing h1 title from file messes up the display on sidebar. Needs further testing
* key `divider` removes doc from `sidebar`