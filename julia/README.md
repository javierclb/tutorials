# More on Julia
- [Editing Julia Packages](editing_julia_packages.md)
- [Plotting Notes](plotting.md) - CURRENTLY OUT OF DATE
- [Julia Tutorials](tutorials.md)
- [Julia Workflow](workflow.md)

# Version 0.7 Setup notes
After installation from https://julialang.org/downloads/, open a REPL and type 
```
] add DifferentialEquations Interpolations Optim IJulia Atom Expectations Revise Distributions Parameters Juno; precompile
```
This will take a while (e.g. 30-45 minutes?) to build and precompile, so get some coffee

After that, install Atom and then go to Settings (Ctrl ,, or Cmd , on OS X) and go to the "Install" panel to install the `uber-juno` package.
- Go to the package and set the executable to the rc2 (e.g. `C:\Users\jlperla\AppData\Local\Julia-0.7.0\bin\julia.exe`)
- You may need to manually add `] add Juno` into your v0.7 setup at this point if you didn't before.

Later, the following are hopefully working at a later date
```
add  Plots QuantEcon ; precompile
```
