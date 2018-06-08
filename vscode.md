# VS Code
Another cross-platform, general purpose editor with Julia support is [VS Code](https://github.com/Microsoft/vscode)

## Workflow Setup

1. Download and install VSCode. 
2. Install some language packages from the pane on the right (or prepend `@sort:installs category:languages` to your extensions search). Key one is `julia`. Grabbing `python` might also be good. 
3. Confirm that the `julia` package recognizes where your Julia executable is installed. 
	- For macOS users, hit `⌘,`. In the pane on the right ("User Settings"), add `"julia.executablePath": "JULIA_LOCATION"`, where `JULIA_LOCATION` is the result of running `which julia` in the terminal. 
	- For Windows users, hit `ABC` (fill in).
	- For Linux users, you would probably know more than us about this.
4. Familiarize yourself with some of the workspace elements:
	- **Code Execution and REPL**: Hitting `⇧⌘P` on macOS (`XYZ` on windows, Linux) will open the command palette. From there you'll see the shortcuts (and clickable options for) the REPL and the option to execute whatever file you have open.
	- **Interactive Playground**: VSCode has many features which distinguish it from other text editors. To get a feel for these, experiment with the `interactive playground`, which can be accessed from the welcome screen (or the `Debug` window). 

## Suggested Packages for Julia
Go `cmd-shift-X`, or click on the left hand pane, to get the packages.  I suggest installing:
- For general use
	- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) - I think...
	- [Code Runner](https://github.com/formulahendry/vscode-code-runner). (vet this) - Kind of an all-in-one code runner for VSCode, where you have a map `{language: executable}` and some other nifty features. Lets you use one command for whatever language the editor thinks the file is. This seems to be the go-to fix for running code in VSCode, but YMMV. 
	
- For Julia

## Suggested Packages for Latex
- [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

TeXLive already has synctex built in, but if you are using MikTeX on Windows, you will need to:

- Download [kpathsea630.dll](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/kpathsea630.dll?revision=46993&view=co)
- Download [synctex.exe](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/synctex.exe?revision=46993&view=co)
- And place both of them in the miktex binaries folder, e.g. `C:\Program Files\MiKTeX 2.9\miktex\bin\x64`
