
# VS Code
- [VS Code](#vs-code)
  - [Extensions, User Settings, and the Command Pallete](#extensions-user-settings-and-the-command-pallete)
  - [General Setup](#general-setup)
  - [Setup for Julia](#setup-for-julia)
  - [Github Integration](#github-integration)
  - [Setup for Latex](#setup-for-latex)
  - [Other Links and Material](#other-links-and-material)

Another cross-platform, general purpose editor with Julia support is [VS Code](https://github.com/Microsoft/vscode)

## Extensions, User Settings, and the Command Pallete
**Command Palette:** 
Many features in VS Code are found through the Command Palette which can be accessed with `Ctrl+Shift+P`.  Throughout, these notes on OSX the `Ctrl` is the `⌘` button.  See https://code.visualstudio.com/docs/getstarted/userinterface for more on the VS Code UI.

**Extensions:** Go to the Extensions tab by clicking on the left side of VS Code, or `Ctrl+Shift+X`.  To find an extenion, type in part of the name into `Search Extensions in Marketplace`.  Alternatively, you can directly click "Install" button on the web links in the VS Code Marketplace

**User Settings:** To edit [Settings](https://code.visualstudio.com/docs/getstarted/settings) in VS Code, open up the user settings with `Ctrl+,` or opening up the command palette and starting to type `User Settings`.To find a particular settings, start typing in the name of the setting, extension, etc. Once you find it, you can select the `Edit` icon next to a particular setting to copy it to your local settings, and change it.

## General Setup
1. Install[VS Code](https://github.com/Microsoft/vscode)
2. Optional: Install [Markdown All in One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one) 
    - Not required, but a good idea since [Markdown](markdown.md) is pervasive
    - For TOC compatability with github, go to the User Settings with `Ctrl+,` and then set `"markdown.extension.toc.githubCompatibility": true`
    - To have it show a preview immediately when you open one of the files, set "markdown.extension.preview.autoShowPreviewToSide": true
3. Optional: Install the [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) extension.

## Setup for Julia
1. Ensure that [VS Code](https://github.com/Microsoft/vscode) and [Julia](julia.md) are installed
2. Type in `julia` to find and install `Julia Language Support`
    - Alternatively, you can click `Install` from [VS Code Julia](https://marketplace.visualstudio.com/items?itemName=julialang.language-julia)
3. To test the installation:
    - Create a new File called `test.jl` or something similar, and copy in something like
```julia
f(x) = x
f(2)
```

   - In the file, go `F5` to run the file.  The first time you do this, it is likely that this will take time so be a little patient.  On the bottom, it may say something like "Language Server Busy"
   - If it shows something in the bottom "TERMINAL" like the following, then it is working
```julia
Main> f(x) = x
f (generic function with 1 method)
Main> f(2)
2
```
4. Optional: If the above doesn't work, then you may need to manually set your Julia executable.
    - First, find the location of the julia binary.  The easiest way to do this is to open a separate Julia REPL and type `JULIA_HOME` to get something like `C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin`
    - From this location, the file is something like `C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin\\julia.exe` on Windows or something equivalent on other OSs.  For Windows, make sure to double every backlash
    - To set this in VS Code, open up the user settings by opening up the command palette `> Preferences: User Settings`
    - In here, type `julia` to get the julia specific settings
    - Then click on the "julia.executablePath" in the "Default User Settings" and choose "Edit" to "Copy to Settings"
    - This copies it over, and you can put in the path.  For example, `"julia.executablePath": "C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin\\julia.exe"` where the quotes are important.
7. Play around with executing Julia code
    - You can execute a single line with `Ctrl+Enter`, which is a great way to go line by line through the code
    - Execute the whole file with `F5`
    - To see the plotting pane, ensure you have `Plots.jl` installed (i.e. `Pkg.add("Plots")`) and then copy the following into a test file
```julia
using Plots
plot(1:5, 1:5)
```
  - Execute the code (noting that `using Plots` the first plot will take 20-30 seconds after precompilation) and it should show the Plot Pane

## Github Integration
- If you are working on a cloned repository, you can see changes in the `Source Control` tab, or with `Ctrl+Shift+G`.
- This will show you changes to the files, etc.  It will let you `Commit` with a message as well.
- The left hand side of the bottom bar on VS Code (or the Git repository in this tab) will let you Pull/Push/Sync
- A simple [Tutorial](https://www.youtube.com/watch?v=9cMWR-EGFuY) with more detail in [Using Version Control in VS Code](https://code.visualstudio.com/docs/editor/versioncontrol)

## Setup for Latex
1. If you just did the Julia setup, perhaps restart so you don't have the same windows cluttered.
1. Optional: If you have installed `MikTex` on Windows, you will need to manually setup SyncTex. Texlive already has it  In that case,
    - Download [kpathsea630.dll](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/kpathsea630.dll?revision=46993&view=co)
    - Download [synctex.exe](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/synctex.exe?revision=46993&view=co)
    - And place both of them in the miktex binaries folder, e.g. `C:\Program Files\MiKTeX 2.9\miktex\bin\x64`
2. Install the following packages in VS Code (clicking on them or using `Ctrl+Shift+X` to get the extensions)
  - [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
3. At this point, you should be able to open a test latex file.  Create a `test.tex` file with something like
```tex
\documentclass{article}
\begin{document}
TEST
\end{document}
```
4. Then go `Ctrl+Alt+B` to build the file then `Ctrl+Alt+V` to get the PDF preview.
5. If you make a change in the latex (e.g. change to `TESTS`) and save, if should automatically update the PDF.


## Other Links and Material
- [Settings Sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) is an extension to maintain settings between different computers.  A little complicated to setup
- https://github.com/formulahendry/vscode-code-runner is another package... not sure it is useful for Julia or Python
- In the menu, go to `Help/Interactive Playground` to see features such as Multi-Cursor Editing, etc.
