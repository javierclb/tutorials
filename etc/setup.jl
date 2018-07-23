#Run this file a new installation.  Hopefully all unnecessary with Pkg3

#Adding important libraries
warn("Installing important libraries.  Be extremely patient")
Pkg.add("Revise")
Pkg.add("OhMyREPL")
Pkg.add("Plots")
Pkg.add("GR")
Pkg.add("Plotly")
Pkg.add("QuantEcon")
Pkg.add("IJulia")
Pkg.add("Expectations")
Pkg.add("NLsolve")
Pkg.add("Parameters")

warn("The package updates and precompilation will be slow!")
Pkg.update()

#Precompiling installed libraries
warn("Precompiling libraries.  Be even more patient")
using Revise
using OhMyREPL
using Plots
using GR
using Plotly
using QuantEcon
using IJulia
using Expectations
using NLsolve
using Parameters 

warn("For setting up editors the Julia Binary location is at")
JULIA_HOME
