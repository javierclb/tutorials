# Atom
A good cross-platform, general purpose editor with Julia support is [Atom](atom.io).  It currently seems to be less responsive than its main competitor, [VS Code](https://code.visualstudio.com/), but is otherwise feature-rich.

## Accessing Settings and Packages
A good starting point is [Atom Basics](http://flight-manual.atom.io/getting-started/sections/atom-basics/)  A few hints:
- Typing `ctrl-shift-p` pulls up a menu to find tasks without looking through menus.  Just start typing what you want to do.
- To access settings, use `ctrl-,` (i.e., hold down `ctrl` and `,` at the same time)
- To add a package, get to settings with `ctrl-,`, then click on `Install`
- To access package settings, get to settings with `ctrl-,`, click on `Packages`, and choose whichever package you want to modify the settings for.  See [Atom Packages](http://flight-manual.atom.io/using-atom/sections/atom-packages/) for more.

## For Editing Markdown Files
For editing [Markdown](markdown.md), you can get better support by adding in a few packages.  For example, add the following packages
- [Markdown Writer](https://atom.io/packages/markdown-writer)
- [Toolbar Markdown Writer](https://github.com/zhuochun/tool-bar-md-writer)
- [Markdown Preview Plug](https://atom.io/packages/markdown-preview-plus)

With these, some of the useful features and key-bindings are
- `ctrl-shift-m` gives a preview of the page
- `ctrl-shift-x` toggles rendering of inline math (note that currently the github flavored markup doesn't support math, but others do)
- A toolbar will show on the left hand side, and you can modify the configuration with [Markdown Toolbar](https://github.com/zhuochun/tool-bar-md-writer)
- There are a number of keymap shortcuts.  Some of the most useful are:
	- Bold: `ctrl-b`
	- Add inline code: `ctrl-'`
	- Add code block: `ctrl-"`
	- Add link: `ctrl-shift-k`
	- Toggle heading `ctrl-alt-[1-5]` for the headings

## For Editing Julia Files
See [Julia](https://github.com/econtoolkit/julia)
