# Editing Packages in Julia 1.0 

:warning: The workflow around packages in Julia 1.0 is radically different than that in prior releases. If you're having trouble with the new package manager, `Pkg3`, see [the docs](https://docs.julialang.org/en/v1/stdlib/Pkg/).

## Setup 

Consider installing [GitKraken](https://www.gitkraken.com/) which will be a little better than the GitHub Desktop for advanced use. Also, make sure that you've set up your IDE correctly (e.g., [Atom](atom.md)), and that (if you're using a `Revise`-based workflow), you've added the `Revise.jl` package and configured it to load at the start of a new session. 

## Preparing a Package for Editing

### Registered Packages

First, check out the package as a git repository using the `pkg> dev` command. The easiest way to do this is to use the `pkg>` REPL mode, which you can get by running `]` in your REPL. You should see something like this: 

```
(v1.0) pkg> dev Expectations
  Updating registry at `~/.julia/registries/General`
  Updating git-repo `https://github.com/JuliaRegistries/General.git`
  Updating git-repo `https://github.com/econtoolkit/Expectations.jl.git`
[ Info: Path `/Users/arnavsood/.julia/dev/Expectations` exists and looks like the correct package, using existing path instead of cloning
```

This will be installed at `~/.julia/dev/Expectations`, where `~` is wherever your `.julia` folder is. You can find the exact path by running:

```
julia> using Expectations

julia> pathof(Expectations)
"/Users/arnavsood/.julia/dev/Expectations/src/Expectations.jl"
```

Add this folder to your GitHub Desktop or GitKraken setup. If you are modifying a particular branch, you can then change it in your UI.
  - In GitKraken, go to the "Remote" and double-click on the appropriate branch
  - In GitHub Desktop, you can choose the "Current branch" at the top of the UI

### Unregistered Packages 

The workflow is the same for unregistered packages. If they're online, simply provide a URL (like `https://github.com/econtoolkit/Expectations.jl`) instead of a package name. If they're on your local machine, give it the filepath to a git repository. 

## Testing and Editing

The way to write packages (and code in general) is by writing tests. These will be automatically run on the package. There are three kinds of tests to be aware of: 

* Unit tests, which ensure that pieces of the package work correctly. 
* Regression tests, which ensure that behavior of the package doesn't change over time. 
* Integration tests, which ensure that small pieces of code fit well together. 

The tests go in the packages `/test` directory underneath the package. The default file `runtests.jl` will be executed whenever we run `pkg> test Expectations`.

The best approach is to write code directly in a test file, and use shift-enter with each line in Juno. Watch Using [Using Juno for Interactive Test-Driven Julia Package Development](https://www.youtube.com/watch?v=i5iGVkI7XOI) for a great workflow.