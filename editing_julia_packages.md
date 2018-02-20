# Editing Julia Packages
## Installation
- Consider installing [GitKraken](https://www.gitkraken.com/) which will be a little better than the GitHub Desktop for advanced use.
- Install Juno, etc. in [Atom](atom.md)
- Some outstanding videos from Christopher Rackauckas are
  - [Developing and Editing Julia Packages](https://www.youtube.com/watch?v=tx8DRc7_c9I&t=40s) which is slightly out of date in Julia v0.5, but the development pattern is the same.
  - [Using Juno for Interactive Test-Driven Julia Package Development](https://www.youtube.com/watch?v=i5iGVkI7XOI)

## Getting a Package Ready for Editing
- If it is a public package, then open a Julia REPL add the package.  e.g. `Pkg.add("DiffEqOperators"")`
- If it is your own package, or not published, then  `Pkg.clone("https://github.com/MYACCOUNT/PACKAGENAME.jl.git")`
  - These are installed in the `.julia` location.  You can find them by something like `Pkg.dir("DiffEqOperators")`
  - This is `"C:\\Users\\Jesse Perla\\.julia\\v0.6\\DiffEqOperators"`
- Add that directory to GitHub Desktop or GitKraken so that you can do git operations directly on that repository.
- If you are modifying a particular branch, you can then change it in your UI.
  - In GitKraken, go to the "Remote" and double-click on the appropriate branch.  e.g. `univariate_tests` for `DiffEqOperators.jl`
  - In GitHub Desktop, you can choose the "Current branch" at the top of the UI

## Testing and Editing
- The way to write packages (and code in general) is by writing tests. These will be automatically run on the package and can test
- The tests go in the packages `/test` directory underneath the package.  The default file `runtests.jl` will be run whenever `Pkg.test("PACKAGENAME")` is called, which in turn usually call the individual `.jl` files in the test folder
- The best approach is to write code directly in a test file, and use `shift-enter` with each line in Juno.  See [Using Juno for Interactive Test-Driven Julia Package Development](https://www.youtube.com/watch?v=i5iGVkI7XOI)
