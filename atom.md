# Atom
<!-- TOC depthFrom:1 depthTo:6 withLinks:1 updateOnSave:1 orderedList:0 -->

- [Atom](#atom)
	- [Suggested Packages](#suggested-packages)
	- [Accessing Settings and Packages](#accessing-settings-and-packages)
	- [Some Useful Settings Choices](#some-useful-settings-choices)
	- [Integration with GitHub Desktop](#integration-with-github-desktop)
	- [For Editing Markdown Files](#for-editing-markdown-files)
	- [Using Pandoc for Converting Between Document Types](#using-pandoc-for-converting-between-document-types)
	- [Editing Julia Files](#editing-julia-files)

<!-- /TOC -->

A good cross-platform, general purpose editor with Julia support is [Atom](atom.io).  It currently seems to be less responsive than its main competitor, [VS Code](https://code.visualstudio.com/), but is otherwise feature-rich.

## Suggested Packages
For the impatient, here are the names of some suggested packages to install.  Either use `ctrl-,` to settings, or pull up a terminal and execute the following,
```
apm install git-plus
apm install markdown-scroll-sync
apm install markdown-preview-plus
apm install pandoc-convert
apm install markdown-toc
apm install uber-juno
apm install language-latex
apm install latex
apm install language-weave
apm install pdf-view
apm install hydrogen
```
A few other steps:
- If installed [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus)
	- Then you need to disable the `markdown-preview` package
	- Add `jmd` to the list of markdown file types
	- Consider turning on `Enable Math Rendering by Default`

## Accessing Settings and Packages
A good starting point is [Atom Basics](http://flight-manual.atom.io/getting-started/sections/atom-basics/)  A few hints:
- Typing `ctrl-shift-p` (or `cmd-shift-p` on OS X) pulls up a menu to find tasks without looking through menus.  Just start typing what you want to do.
- To access settings, use `ctrl-,` (i.e., hold down `ctrl` and `,` at the same time)
- To add a package, get to settings with `ctrl-,`, then click on `Install`
- To access package settings, get to settings with `ctrl-,`, click on `Packages`, and choose whichever package you want to modify the settings for.  See [Atom Packages](http://flight-manual.atom.io/using-atom/sections/atom-packages/) for more.

## Some Useful Settings Choices
A few choices to consider after opening settings with `ctrl-,` (or `cmd-,`on OS X)
- Go to `System` and choose `Show in file context menus` and `Show in folder context menus`
- Choose `Open the GitHub Panel` and follow the instructions to get a token

## Integration with GitHub Desktop
A great feature in GitHub Desktop is the ability to open a repository as a project in Atom.
- Go to a repository in the GitHub Desktop and hit `ctrl-shift-a`
- If it does not open in Atom, you can edit the settings in GitHub Desktop by choosing `File/Options/Advanced` and choosing Atom.

Within Atom, using Git directly (without jumping to GitHub Desktop is possible)
- A useful package is [git-plus](https://github.com/akonwi/git-plus)
  - Using `ctrl-shift-p` you can see all sorts of options by typing `Git`
  - The built-in key binding has `ctrl-shift-A P` to do everything and commit to the server.
  - After using that, it will popup a screen to type in the commit message, at which point you can `ctrl-S` to save it, and the operation will continue.
- Another, more GUI, approach is by installing the package [git-control](https://atom.io/packages/git-control)
  - Having trouble with this 1/16/2018)

## For Editing Markdown Files
For editing [Markdown](markdown.md), you can get better support by adding in a few packages.  For example, add the following packages
- [markdown-writer](https://atom.io/packages/markdown-writer)
- [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus)
- [markdown-toc](https://atom.io/packages/markdown-toc)

With these, some of the useful features and key-bindings are
- `ctrl-shift-m` gives a preview of the page
- `ctrl-shift-x` toggles rendering of inline math (note that currently the github flavored markup doesn't support math, but others do)
- There are a number of keymap shortcuts.  Some of the most useful are:
	- Bold: `ctrl-b`
	- Add inline code: `ctrl-'`
	- Add code block: `ctrl-"`
	- Add link: `ctrl-shift-k`
	- Toggle heading `ctrl-[1-5]` for the headings 1-5
- To add a table of contents, `ctrl-alt-c`

## Using Pandoc for Converting Between Document Types
- Install [pandoc-convert](https://atom.io/packages/pandoc-convert)
	- With a `ctrl-shift-p`, you can type `Convert Pandoc` to access various choices.  For example, `.md` to a `.pdf` (including embedded latex)
	- You can embed LaTeX in the markdown files using the typical `$ a = b$` and `$$a = b$$` notation


## Editing Julia Files
See [Julia](https://github.com/econtoolkit/julia)
Also useful to install the [language-weave](https://atom.io/packages/language-weave) package

## Editing LaTeX
Install the following packages:
- [language-latex](https://atom.io/packages/language-latex)
- [latex](https://atom.io/packages/latex)
- [pdf-view](https://atom.io/packages/pdf-view)

Go the the settings for the `latex` package in Atom, and choose
- `Enable Shell Escape`
- `Enable SyncTex`
- `Use DiCy`
