#Run this file a new installation.  Hopefully all unnecessary with Pkg3

# Adding important libraries.
@warn "Installing important libraries.  Be extremely patient"
using Pkg 
pkg"add Revise Plots QuantEcon Parameters Expectations IJulia GR NLsolve Interpolations Optim DifferentialEquations"

# Updating libraries. 
@warn "The package updates and precompilation will be slow!"
pkg"up"

#Precompiling installed libraries
@warn "Precompiling libraries. Be even more patient"
pkg"precompile"

@warn "For setting up editors the Julia Binary location is at"
Sys.BINDIR