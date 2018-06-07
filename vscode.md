# VS Code
Another cross-platform, general purpose editor with Julia support is [VS Code](https://github.com/Microsoft/vscode)

## Workflow Setup
	1. Install some language packages from the pane on the right (or prepend `@sort:installs category:languages` to your extensions search). Good ones are `julia` ([link](https://github.com/JuliaEditorSupport/julia-vscode)) and `python` ([link](https://github.com/Microsoft/vscode-python)). 
		- Make sure your `julia` executable is recognized by the extension. To get the path, type `which julia` in the terminal. To edit the setting, go to `preferences` in VSCode, and add `"julia.executablePath": "/usr/local/bin/julia"` to the user settingds dict.
	2. Install a package to let you run code. A good one is `code runner`. 
	3. 


## Suggested Packages for Julia
Go `cmd-shift-X`, or click on the left hand pane, to get the packages.  I suggest installing:
- For general use
	- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) - I think...
- For Julia
	

## Suggested Packages for Latex
- [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

TeXLive already has synctex built in, but if you are using MikTeX on Windows, you will need to:

- Download [kpathsea630.dll](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/kpathsea630.dll?revision=46993&view=co)
- Download [synctex.exe](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/synctex.exe?revision=46993&view=co)
- And place both of them in the miktex binaries folder, e.g. `C:\Program Files\MiKTeX 2.9\miktex\bin\x64`
