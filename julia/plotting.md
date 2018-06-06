# Plotting in Julia
**OUT OF DATE** Use `Plots.jl` and `gr()` for now on a generic setup.

At this point, plotting in Julia is a mess. Lots of great work is being done, but it will take time.

## A Few Options
A key principle is that you do not need to use the same plotting library for interactive graphs in Jupyter/etc. while creating your algorithm and for creating publication quality plots.

- [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl): A wrapper for [matplotlib](https://matplotlib.org/api/pyplot_api.html) library.  It good for Jupyter as well as exporting figures for print, and is fast to use.  The documentation is poor, as users generally read the Python documents directly to figure out features.  
- [PlotlyJS.jl](https://github.com/sglyon/PlotlyJS.jl): A wrapper for the interactive [plotly.js](https://plot.ly/javascript/).js library.  It is perfect for Jupyter, very fast, interactive, and has decent documentation.  It isn't really intended for print.  
- [Plots.jl](https://github.com/JuliaPlots/Plots.jl): The goal of this was to create a common front-end interface for plotting, where you can switch out the various backends which actually generate the plots (i.e., can choose PlotlyJS, PyPlot, and others).  It is a great idea which could conceivably work as the baseline plotting library, **but** it is incredibly slow on first use.  It tends to be feature rich and well-documented.

## A Suggestion
At this point, consider sticking with [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl) as a starting point, and [PlotlyJS.jl](https://github.com/sglyon/PlotlyJS.jl) as you get comfortable in Jupyter and with a desktop setup

## Some Resources
- [PyPlot.jl](https://github.com/JuliaPy/PyPlot.jl): The baseline documentation emphasizses how to translate the Python docs to PyPlot, so learn through examples instead
  - Tutorial in [QuantEcon](https://lectures.quantecon.org/jl/julia_plots.html#pyplot)
  - A large number of examples are in [https://gist.github.com/gizmaa/7214002](https://gist.github.com/gizmaa/7214002)
  - See the tutorial in [PaulSoderlind/JuliaTutorial/PyPlot](https://github.com/PaulSoderlind/JuliaTutorial/blob/master/Tutorial_21_PyPlot.ipynb)
  - Some examples of animations
    - [genkuroki animations](https://genkuroki.github.io/documents/Jupyter/20170624%20Examples%20of%20animations%20in%20Julia%20by%20PyPlot%20and%20matplotlib.animation.html)
    - [genkuroki animations](https://genkuroki.github.io/documents/Jupyter/20170624%20Examples%20of%20animations%20in%20Julia%20by%20PyPlot%20and%20matplotlib.animation.html)
    - [2D three-body problem](http://nbviewer.jupyter.org/github/tom26/JuliaFun/blob/master/2D%203-Body%20Problem.ipynb) -
    - [3D n-body problem](http://nbviewer.jupyter.org/github/tom26/JuliaFun/blob/master/3D%20n-body%20problem.ipynb)- potentially out of date
- [PlotlyJS.jl](https://github.com/sglyon/PlotlyJS.jl) The baseline [documentation](http://spencerlyon.com/PlotlyJS.jl/) is good
  - Tutorial in [QuantEcon](https://lectures.quantecon.org/jl/julia_plots.html#plotlyjs)
  - Best learned through the examples in the [documentation](http://spencerlyon.com/PlotlyJS.jl/)
  - PlotlyJS on your desktop will take a little work.  See the documentation.
- [Plots.jl](https://github.com/JuliaPlots/Plots.jl):
  - Tutorial in [QuantEcon](https://lectures.quantecon.org/jl/julia_plots.html#plots-jl)
  - The baseline [documentation](http://docs.juliaplots.org/latest/) is excellent
  - [PaulSoderlind/JuliaTutorial/Plots](https://github.com/PaulSoderlind/JuliaTutorial/blob/master/Tutorial_22_Plots.ipynb)
