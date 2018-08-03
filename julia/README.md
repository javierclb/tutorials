# More on Julia
- [Editing Julia Packages](editing_julia_packages.md)
- [Plotting Notes](plotting.md) - CURRENTLY OUT OF DATE
- [Julia Tutorials](tutorials.md)
- [Julia Workflow](workflow.md)

# Version 0.7 Setup notes
After installation of the Release Candidate, open a REPL, go `]` to enter package mode, and then
```
add DifferentialEquations Interpolations Optim IJulia Atom Expectations Revise Distributions QuantEcon Parameters Plots Juno; precompile
```
This will take a while (e.g. 10-20 minutes?) to build and precompile.

After that, install Atom and then go to Settings (Ctrl ,, or Cmd , on OS X) and go to the "Install" panel to install the `uber-juno` package.
- Go to the package and set the executable to the rc2 (e.g. `C:\Users\jlperla\AppData\Local\Julia-0.7.0-rc2\bin\julia.exe`)
- You may need to manually add `]add Juno` into your v0.7 setup at this point.
