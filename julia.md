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
One option is [JuliaPro](https://juliacomputing.com/products/juliapro.html) as an easy way to get started and play around with Juila.  However, the issue with JuliaPro is that you are basically unable to update your packages, so ultimately you may want to install Julia separately.

Alternatively, to install Julia separately you can follow [First Steps](https://lectures.quantecon.org/jl/getting_started.html#first-steps).  Alternatively, for the impatient the summary of links to download and install is:
1. [Anaconda](https://www.anaconda.com/download/)

    - May not be necessary if you already have a complete installation of Python and its package managers
    - Choose the Anaconda with Python 3.6

2. [Julia](https://julialang.org/downloads/)
3. [Atom](https://atom.io/) as an IDE.  Then,

    - In Atom, go to Settings (`ctrl-,`, or `cmd-,` on OS X) and go to the "Install" panel.
    - Type `uber-juno` into the search box and hit enter. Click the install button on the package of the same name.
    - You then typically need to point Juno at the julia executable.  To do this, go to the settings page with `ctrl-,` and go to the `julia-client` package
    - Make sure you know the locaion of the Julia executable.  You can find this in the REPL with the function `JULIA_HOME`.e.g. `/bin/Julia-0.6.2/bin/julia.exe`  On windows, better to avoid backslashes
    - There you will see a place to put the Julia executable. Put the full file to it,
    - After, you can test out a Julia consol by choosing `shift-ctrl-p` (or `shift-cmd-p` on OS X) and then typing `Julia` to see all of the options.
    - For more on atom, see [Atom Tutorial](atom.md)

4. Consider running the following setup to download and precompile some useful packages

    - Either download [setup.jl](etc/setup.jl) or clone this repository
    - Start up a Julia console, use `;` to get a shell and `cd` into the location of that file
    - Then execute the following, and go to lunch
    ```julia
    include("setup.jl")
    ```
    - You might get build errors on the `Pkg.update()` setup with the IJulia installation.  If so, rerun the setup script, and it may ask you to run `Pkg.build("IJulia")`
5. To Install Jupyter
    - If you run the `include("setup.jl")` it will install it for you
    - Otherwise, you will need to go to a Julia consol and type `Pkg.add("IJulia")`
    - After installation, you can run jupyter with `jupyter notebook` or to use the latest interface (which is a major step forward) `jupyter lab`
    - Depending on how you installed Anaconda, this may require adding a directory to the PATH.  The location depends on the installation location, but it will be something like `/bin/Anaconda3/Scripts`

6. To change Jupyter start-up directory

   For Windows: if Anaconda was installed in C:/bin, then created a shortcut with
   - Target = `C:\bin\Anaconda3\Scripts\jupyter.exe notebook`
   - Or to use Jupyter Lab, `Target = C:\bin\Anaconda3\Scripts\jupyter.exe lab`
   - Next, to have it start in a particular folder, change the "Start In" to = `c:\working` or wherever you want.

   For OS X: you have to launch Jupyter from the directory that you want to work in. One way to do this is
   - Type `terminal` to launch the OS X Terminal
   - Next, to have it start in a particular folder, enter the command: `cd/folder_name`
   - After that, type `jupyter notebook` to launch Jupyter

   If you don't want to enter the command `cd/folder_name` each time, you could set up a bash alias command. See this [tutorial](https://davidwalsh.name/alias-bash).


## Atom with Juno

A texteditor for `.jl` files that has a built-in REPL to run code, etc.  It is the closest to a matlab style IDE, but the debugger is still in progress.  Juno is built on [Atom](https://atom.io/) and has a reputation for being a little slow as an editor, although it is making progress.

  - See [Installation](http://docs.junolab.org/latest/man/installation.html)
  - See [Usage Guide](http://docs.junolab.org/latest/man/basic_usage.html)
  - After installation, start Juno and create a new `.jl` file, or open the `example.jl` in this repository
  - To run a line of code in the editor, use `shift-enter`
  - To run the entire file, you can use the tools on the left hand bar, or `shift-control-enter`
  - You will quickly feel one of the major current issues with Julia environment right now: (time required to plot the first time, which they are working on).

## Advanced Configuration for your Desktop
Two Julia packages which can make editing sourcecode easier are [Revise.jl](https://github.com/timholy/Revise.jl) and [OhMyREPL.jl](https://github.com/KristofferC/OhMyREPL.jl).  To load these automatically,
- Find the `.` files are for your account.  For example, it is usually at `cd ~` on linux/osx/windows with bash, or in a directory such as `C:\Users\jlperla`.
- Copy [.juliarc.jl](etc/.juliarc.jl) to that directory
