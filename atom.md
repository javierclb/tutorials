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
For the impatient, here are the names of some suggested packages to install.  Either use `cmd-,` to settings, or pull up a terminal and execute the following,
```
apm install git-plus
apm install markdown-preview-plus
apm install uber-juno
apm install language-weave
apm install pdf-view
apm install highlight-selected
```
Or if you trust me,
```
apm install git-plus markdown-preview-plus uber-juno pdf-view highlight-selected
```
A few other steps:
- If installed [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus)
	- Then you need to disable the `markdown-preview` package
	- Add `jmd` to the list of markdown file types
	- Add `source.weave.md` to the list of grammars
	- Consider turning on `Enable Math Rendering by Default`

## Accessing Settings and Packages
A good starting point is [Atom Basics](http://flight-manual.atom.io/getting-started/sections/atom-basics/)  A few hints:
- Typing `cmd-shift-p` (or `cmd-shift-p` on OS X) pulls up a menu to find tasks without looking through menus.  Just start typing what you want to do.
- To access settings, use `cmd-,` (i.e., hold down `cmd` and `,` at the same time)
- To add a package, get to settings with `cmd-,`, then click on `Install`
- To access package settings, get to settings with `cmd-,`, click on `Packages`, and choose whichever package you want to modify the settings for.  See [Atom Packages](http://flight-manual.atom.io/using-atom/sections/atom-packages/) for more.

## Some Useful Settings Choices
A few choices to consider after opening settings with `cmd-,` (or `cmd-,`on OS X)
- Go to `System` and choose `Show in file context menus` and `Show in folder context menus`
- Choose `Open the GitHub Panel` and follow the instructions to get a token

Go to `Atom > Open Your Config` and add `softWrap: true` to the `editor` section.

## Integration with GitHub Desktop
A great feature in GitHub Desktop is the ability to open a repository as a project in Atom.
- Go to a repository in the GitHub Desktop and hit `cmd-shift-a`
- If it does not open in Atom, you can edit the settings in GitHub Desktop by choosing `File/Options/Advanced` and choosing Atom.

Within Atom, using Git directly (without jumping to GitHub Desktop is possible)
- A useful package is [git-plus](https://github.com/akonwi/git-plus)
  - Using `cmd-shift-p` you can see all sorts of options by typing `Git`
  - The built-in key binding has `cmd-shift-A p` to do everything and commit to the server.
  - After using that, it will popup a screen to type in the commit message, at which point you can `cmd-S` to save it, and the operation will continue.
- Another, more GUI, approach is by installing the package [git-control](https://atom.io/packages/git-control)
  - Having trouble with this 1/16/2018)

## For Editing Markdown Files
For editing [Markdown](markdown.md), you can get better support by adding in a few packages.  For example, add the following packages
- [markdown-writer](https://atom.io/packages/markdown-writer)
- [markdown-preview-plus](https://atom.io/packages/markdown-preview-plus)
- [markdown-toc](https://atom.io/packages/markdown-toc)

With these, some of the useful features and key-bindings are
- `cmd-shift-m` gives a preview of the page
- `cmd-shift-x` toggles rendering of inline math (note that currently the github flavored markup doesn't support math, but others do)
- There are a number of keymap shortcuts.  Some of the most useful are:
	- Bold: `cmd-b`
	- Add inline code: `cmd-'`
	- Add code block: `cmd-"`
	- Add link: `cmd-shift-k`
	- Toggle heading `cmd-[1-5]` for the headings 1-5
- To add a table of contents, `cmd-alt-c`

## Using Pandoc for Converting Between Document Types
- Install [pandoc-convert](https://atom.io/packages/pandoc-convert)
	- With a `cmd-shift-p`, you can type `Convert Pandoc` to access various choices.  For example, `.md` to a `.pdf` (including embedded latex)
	- You can embed LaTeX in the markdown files using the typical `$ a = b$` and `$$a = b$$` notation


## Editing Julia Files
See [Julia](julia.md). Another useful package is [language-weave](https://atom.io/packages/language-weave).

## Editing LaTeX
**Note:** Editing latex in Atom is possible, but slower and buggier than you would hope.

Install the following packages:
- [language-latex](https://atom.io/packages/language-latex)
- [latex](https://atom.io/packages/latex)
- [pdf-view](https://atom.io/packages/pdf-view)

Go the the settings for the `latex` package in Atom, and choose
- `Enable Shell Escape`
- `Enable SyncTex`
- `Use DiCy` should probably be set to false if you have MikTeX installed.

TeXLive already has synctex built in, but if you are using MikTeX on Windows, you will need to:
- Download [kpathsea630.dll](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/kpathsea630.dll?revision=46993&view=co)
- Download [synctex.exe](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/synctex.exe?revision=46993&view=co)
- And place both of them in the miktex binaries folder, e.g. `C:\Program Files\MiKTeX 2.9\miktex\bin\x64`
