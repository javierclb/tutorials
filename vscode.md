# VS Code
Another cross-platform, general purpose editor with Julia support is [VS Code](https://github.com/Microsoft/vscode)

Many features in VS Code are found through the Command Palette which can be accessed with `Ctrl+Shift+P`.  Throughout, these notes on OSX the `Ctrl` is the `⌘` button.  See https://code.visualstudio.com/docs/getstarted/userinterface for more on the VS Code UI.

## Setup for Julia
1. Ensure that [VS Code](https://github.com/Microsoft/vscode) and [Julia](julia.md) are installed
1. Go to the Extensions tab by clicking on the left side of VS Code, or `Ctrl+Shift+X`
2. Type in `julia` to find and install `Julia Language Support`
    - Alternatively, you can click `Install` from https://marketplace.visualstudio.com/items?itemName=julialang.language-julia
3. Optional: Install the [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens) extension.
4. To test the installation:
    - Create a new File called `test.jl` or something similar, and copy in something like
```
f(x) = x
f(2)
```
    - In the file, go `F5` to run the file.  The first time you do this, it is likely that this will take time so be a little patient.  On the bottom, it may say something like "Language Server Busy"
  - If it shows something in the bottom "TERMINAL" like the following, then it is working
```
Main> f(x) = x
f (generic function with 1 method)
Main> f(2)
2
```
5. Optional: If the above doesn't work, then you may need to manually set your Julia executable.
  - First, find the location of the julia binary.  The easiest way to do this is to open a separate Julia REPL and type `JULIA_HOME`
```
julia> JULIA_HOME
"C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin"
```
  - From this location, the file is something like `C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin\\julia.exe` on Windows or something equivalent on other OSs.  For Windows, make sure to double every backlash
  - To set this in VS Code, open up the user settings by opening up the command palette `> Preferences: User Settings`
  - In here, type `julia` to get the julia specific settings
  - Then click on the "julia.executablePath" in the "Default User Settings" and choose "Edit" to "Copy to Settings"
  - This copies it over, and you can put in the path.  For example, `"julia.executablePath": "C:\\Users\\jlperla\\AppData\\Local\\Julia-0.6.3\\bin\\julia.exe"` where the quotes are important.
6. Play around with executing Julia code
  - You can execute a single line with `Ctrl+Enter`, which is a great way to go line by line through the code
  - Execute the whole file with `F5`
  - To see the plotting pane, ensure you have `Plots.jl` installed (i.e. `Pkg.add("Plots")`) and then copy the following into a test file
```
using Plots
plot(1:5, 1:5)
```
  - Execute the code (noting that `using Plots` the first plot will take 20-30 seconds after precompilation) and it should show the Plot Pane

## Suggested Packages for Latex
1. If you just did the Julia setup, perhaps restart so you don't have the same windows cluttered.
1. Optional: If you have installed `MikTex` on Windows, you will need to manually setup SyncTex. Texlive already has it  In that case,
  - Download [kpathsea630.dll](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/kpathsea630.dll?revision=46993&view=co)
  - Download [synctex.exe](https://www.tug.org/svn/texlive/trunk/Master/bin/win32/synctex.exe?revision=46993&view=co)
  - And place both of them in the miktex binaries folder, e.g. `C:\Program Files\MiKTeX 2.9\miktex\bin\x64`
2. Install the following packages in VS Code (clicking on them or using `Ctrl+Shift+X` to get the extensions)
  - [LaTex Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  - [Code Spell Checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
3. At this point, you should be able to open a test latex file.  Create a `test.tex` file with something like
```
\documentclass{article}
\begin{document}
TEST
\end{document}
```
4. Then go `Ctrl+Alt+B` to build the file then `Ctrl+Alt+V` to get the PDF preview.
5. If you make a change in the latex (e.g. change to `TESTS`) and save, if should automatically update the PDF.

## Other Links and Material
- https://github.com/formulahendry/vscode-code-runner is another package... not sure it is useful for Julia
