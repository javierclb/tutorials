# Using Markdown
Markdown is a simple way to write styled text.  Think of it as a replacement for writing out complicated HTML code for small pages or comments.

## Markdown in GitHub
In GitHub is used in several places:

- Files with the `.md` extension github repositories.  These will render as webpages when accessed in the online GitHub.  For example, [README.md](README.md).
- In fact, if you go to a repository in github, any file named `README.md` will display automatically like a webpage, and every repository should have one.
- Markdown is also used in GitHub for writing issues, comments on commits, etc.  

To learn the syntax of markdown, take a look at
- [Mastering Markdown](https://guides.github.com/features/mastering-markdown/), but it is straightforward.
- As an example, you can look at the raw markdown of the [README.md](README.md) here as [Raw README.md](https://raw.githubusercontent.com/ubcecon/tutorials/master/README.md)
- There are a few different variations on the markdown specification, where the link above is for the one on GitHub version.  Most are nearly identical.
- One benefit of the GitHub markup for writing issues, etc. in GitHub (though not in `.md` files) is the ability to refer to individuals or issues.  For example, `#1` will refer to an issue number in the current repository, and `@jlperla` would refer that individual by GitHub ID. See [Issue #1](https://github.com/ubcecon/tutorials/issues/1) for an example.
- One irritation of the GitHub markup is that LaTeX is not supported at this point.  This makes it a pain to have math in github issues.
    - A solution on Chrome is to install the [GitHub MathJax](https://github.com/orsharir/github-mathjax) extension
    - This will parse text in markdown such as `$$ a = b $$` or `$a = b$` as display it as LaTex.
    - Don't use it on `.md` files, but it is reasonable for a team working on issues

## Markdown in Jupyter Notebooks

- Another place where you can use Markdown is in Jupyter Notebooks (such as that described in [Julia](https://github.com/econtoolkit/julia)).  These usually have the `.ipynb` extension.
- The notebook interface allows you to put a `Markdown` cell in a notebook
- Unlike GitHub, it also allows you to embed LaTeX directly (inside of either `$$ a = b $$` or `$a = b$`) within the `Markdown` cells.
- An advantage of storing notebooks in GitHub, is that they will automatically do a read-only display.  For example, see [Linear Algebra Review](notebooks/linear_algebra_review.ipynb)