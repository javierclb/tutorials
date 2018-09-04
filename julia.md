# Introduction
## Choosing Julia

- **Why Julia?**: Julia gets as close to writing whiteboard mathematics directly in code as any language has yet to achieved.  Moreover, the code has the possibility to be almost as as fast (or faster in the longrun) than typical code using compiled lanugages like Fortran or C/C++.
- **Why not Python?**: Python is a general-purpose language, and very useful for things like screen-scraping, manipulating data files, gluing together code, cookbook datascience, etc.  But it is not ideal for implementing mathematical models and scientific computing, and incapable of high-performance by its very design.  The development environment is much more mature than Julia, but in 2+ years that will likely not be true.  On the other hand, Python may remain a better language for cookie-cutter datascience and machine learning tasks in the near future.
- **Is Julia Ready?** The language: Yes.  The environment: Almost.  The general "development environment" of Julia is rough around the edges, but will get better.  If you are thinking a few years into the future, then now is the time to invest in learning the language (even if it is sometimes painful).  The current version of Julia (0.6) is the last prior to a stabilization of the language.  But for the most part, learning Julia 0.6 is not time wasted (even if some code will require conversion when 0.7/1.0 is released).
- **Will it succeed?** It is too good to fail!  The community is large enough, and the packages available are dense enough, to support users until it is fully ready.
- **It feels slow!**:  Yes, the environment does.  Many tasks run slowly the first time you execute them.  Keep in mind that Julia is often closer to a compiled language (like Fortran and C++) than a dynamic language (like Matlab or Python).  But there is hope!  The perceived speed usually has to do with either (1) the package management system; or (2) code needs to be compiled the first time you use it.  The package management is being replaced, which should help, and the timing of when compilation happens should get better.  Until then: luckily, once the compiling has happened it should feel lightning fast.

# Getting Started with Julia

You can: (1) run as Jupyter notebooks on a web server; (2) install and use Jupyter on a desktop; (3) or use julia files directly on the desktop with an IDE or a REPL.

Unlike working with files directly, a Jupyter notebook contains both code and results.  To see some of the key features, look at https://lectures.quantecon.org/jl/getting_started.html#notebook-basics

For more details on accessing tutorials, see [Julia Tutorials](julia/tutorials.md)

## Using Julia Online with Jupyter

[JuliaBox](https://next.juliabox.com/)  is the easiest method to get started using Julia, as it requires no installation
- Login with a github account (which will  make it easy to connect to github)
	 - The most important rule is: **never install packages directly** on JuliaBox
	 - i.e. don't use `Pkg.add()` on https://next.juliabox.com/ notebooks
     - Instead, form the main page, click on `Packages` at the top, choose `Yours`, then add to the dialog that says `Enter the package...`.  After installing packages, hit `Start` to rebuild.
- From JuliaBox, a great place to start are the pre-installed tutorial files.  You can walk through them with a [Youtube Tutorial](https://www.youtube.com/watch?v=4igzy3bGVkQ)

## Installing Julia on your Desktop
One option is [JuliaPro](https://juliacomputing.com/products/juliapro.html) as an easy way to get started and play around with Juila.  However, the issue with JuliaPro is that you are basically unable to update your packages, so ultimately you may want to install Julia separately.  It is **not recommended** at this point.

To install Julia separately you can follow [First Steps](https://lectures.quantecon.org/jl/getting_started.html#first-steps).  Alternatively, for the impatient the summary of links to download and install is:

1. [Git](https://git-scm.com/downloads). 
	- This is the "version control system" that Julia uses to manage packages, and that coders use to manage software. 
2. [Anaconda](https://www.anaconda.com/download/)
    - May not be necessary if you already have a complete installation of Python and its package managers
    - Choose the Anaconda with Python 3.6
3. Install [Julia](https://julialang.org/downloads/)
4. *Optional, but Recommended*: [VS Code](https://github.com/Microsoft/vscode) as an editor, with installation/setup notes in [VS Code Notes](vscode.md)
5. *Optional, but Recommended* Consider running the following setup to download and precompile some useful packages
    - Either download [setup.jl](etc/setup.jl) or clone this repository
    - Start up a Julia console, use `;` to get a shell and `cd` into the location of that file
    - Then execute the following, and go to lunch
    ```julia
    include("setup.jl")
    ```
    - You might get build errors on the `Pkg.update()` setup with the IJulia installation.  If so, rerun the setup script, and it may ask you to run `Pkg.build("IJulia")`
6. To Install Jupyter
    - If you run the `include("setup.jl")` it will install it for you
    - Otherwise, you will need to go to a Julia consol and type `Pkg.add("IJulia")`
    - After installation, you can run jupyter with `jupyter notebook` or to use the latest interface (which is a major step forward) `jupyter lab`
    - Depending on how you installed Anaconda, this may require adding a directory to the PATH.  The location depends on the installation location, but it will be something like `/bin/Anaconda3/Scripts`
7. To change Jupyter start-up directory
   - For Windows: if Anaconda was installed in C:/bin, then created a shortcut with
        - Target = `C:\bin\Anaconda3\Scripts\jupyter.exe notebook`
        - Or to use Jupyter Lab, `Target = C:\bin\Anaconda3\Scripts\jupyter.exe lab`
        - Next, to have it start in a particular folder, change the "Start In" to = `c:\working` or wherever you want.

   - For OS X: you have to launch Jupyter from the directory that you want to work in. One way to do this is
        - Type `terminal` to launch the OS X Terminal
        - Next, to have it start in a particular folder, enter the command: `cd/folder_name`
        - After that, type `jupyter notebook` to launch Jupyter
        - If you don't want to enter the command `cd/folder_name` each time, you could set up a bash alias command. See this [tutorial](https://davidwalsh.name/alias-bash).



## Advanced Configuration for your Desktop: The Revise Workflow
It is much easier to edit sourcecode in an editor with [Revise.jl](https://github.com/timholy/Revise.jl).
1. First install with `Pkg.add("Revise")`
2. Find the `.` files are for your account.  For example, it is usually at `cd ~` on linux/osx/windows with bash, or in a directory such as `C:\Users\jlperla`
3. Copy [.juliarc.jl](etc/.juliarc.jl) to that directory
4. *Optional, with Atom (but not VS Code):* for Juno/Atom, you need to use the master of Revise.  To do this,
```
Pkg.add("Revise")
Pkg.checkout("Revise", "v0.6")
```

Another package is 
REPL, but it doesn't work well with VS Code.  It can always be manually added in a particular REPL session with `using OhMyREPL`.

## Julia 1.0 with Atom + Juno

Note: This guide is a minimal example to get up-and-running with Julia 1.0 and [Atom](https://atom.io), extended with [Juno](http://junolab.org). For a more comprehensive overview of the Atom IDE, see the [Atom Tutorial](atom.md). 

### Choosing Atom + Juno 

* **Why these technologies?** Currently, the Juno environment is the richest IDE for Julia, with native support for things like plots, documentation, progress statistics, autocompletion, and namespaces. Juno is built on Atom, an open-soure and "hackable" (read: extendable, modular, etc.) text-editor. 

* **What are the drawbacks?** The main one is performance; Atom is a bit slower than VS Code. But this isn't too noticeble, and we think the extra features + interoperability with the rest of the Julia community is worth it. 

### Installation and Setup

1. Install Atom, by downloading it from the [Atom website](https://atom.io).

2. Go to the `Install` menu, either by clicking the appropriate button on the welcome screen, or navigating to it after opening the settings pane (`Cntrl + ,` on Windows, and `⌘ + ,` on macOS).

3. Type `uber-juno` into the search box and hit enter. Click install on the package that appears. This will typically take a while, as Juno installs dependencies. When it asks you whether or not to use the standard layout, click `yes`.

4. Sometimes, Juno will fail to find the Julia executable (say, if it's installed somewhere nonstandard, or you have multiple). To do this, go back to preferences, click on `Packages`, type in `julia-client`. You'll then see a setting called `Julia path`. Fill it with the result of running `Sys.BINDIR` in the REPL, with an addiional `/julia` at the end. For example, in my REPL running that command yields:

    `/Applications/Julia-1.0.app/Contents/Resources/julia/bin`
    
    So I would type in `/Applications/Julia-1.0.app/Contents/Resources/julia/bin/julia` (no quotes).


5. You can test this setup by restarting Atom, opening the command palette (`Shift + Cntrl + P` on Windows, and `Shift + ⌘ + P` on a Mac, and selecting `Julia: Standard Layout`. :warning: Sometimes, you may encounter an error mesage, say because Atom was confused by the switch in versions. Restarting the program should resolve this. 

### Usage

* Define a variable in the REPL and navigate to the workspace tab (near documentation), and that variable (along with a MATLAB-style binding, `ans`) should appear. 

* Make a plot using 

```
    using Plots 
    x = 0.0:0.01:10.0 
    y = sin.(x)
    plot(x, y)
```

If you don't have `Plots.jl` installed, see our earlier configuration instructions. (You will quickly feel one of the major current issues with Julia environment right now: (time required to plot the first time, which they are working on).

* Create a new `.jl` file, or open the `example.jl` in this repository
  - To run a line of code in the editor, use `shift-enter`
  - To run the entire file, you can use the tools on the left hand bar, or `shift-control-enter` (with the usual proviso for Mac users).

* Use the `Documentation` pane to search up Julia objects (say, the function `getindex`).

### Additional Notes 

* [Juno Installation](http://docs.junolab.org/latest/man/installation.html)
* [Juno Usage Guide](http://docs.junolab.org/latest/man/basic_usage.html)
