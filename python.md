# Introduction

Python is a a high-level, general-purpose language that emphasizes code readability. It is widely preferred by software development companies due to its versatile features and fewer programming codes. Some of its applications include gaming, screen-scraping and graphic designs. Python contains extensive support libraries which include areas like string operations and operating system interfaces with most programming tasks already scripted into it and therefore the length of codes to be written in Python is greatly reduced. Although Python is not ideal for implementing mathematical models and scientific compared to Julia, it may still remain to be  a better language for cookie-cutter datascience and machine learning tasks in the near future. The global computer giant, Google, has also made Python as one of its offical programming languages. 

# Getting Started with Jupyter Notebooks for Python 

Jupyter Notebooks are great to interact with Python and the scientific libraries. They are a *browser-based* application that allows you to create and share documents that contain live code, formatted text, mathematical equations and visualizations. For more specific information, check out the official website [jupyter.org](http://jupyter.org). 

You can: (1) run Jupyter notebooks on a web server; (2) install and use Jupyter on a desktop. 

To do this, first visit the website http://www.jupyter.org. There, you will find the two options on the bottom of the webpage: 
1. Try it in your browser
2. Install the Notebook

## Using Python Online with Jupyter

This is easy to do. Simply choose the first option **Try it in your browser** which will give you access to a hosted version of Jupyter Notebooks. You will have direct access to it without installing it on your computer. 

## Using Python on your Desktop

This is recommended. Once you go onto http://www.jupyter.org, choose the second option **Install the Notebook** which will bring you to a new window that contains detailed installation instructions.

There are several ways to set up your Python environment: 
1. Installing Jupyter Notebook by using the Anaconda distribution
   
   This is a great choice to set up your development environment especially if you are new to Python. Read through https://lectures.quantecon.org/py/getting_started.html to get an idea of the installation procedure as well as how to work with Jupyter Notebooks. You can also follow the steps below for basic setup:
   - Download [conda](https://www.anaconda.com/download/) 
   - Once you have installed Anaconda, you can start the Jupyter Notebook by either (1) launching Jupyter in your applications menu or (2) opening up a terminal and type `jupyter notebook` folllowing the `$` sign. The Jupyter Notebook application will be opened in your default browser automatically. 
   - Now, simply create a new Jupyter Notebook using the *New* dropdown menu and select option *Python 3* or similar to open a new Notebook for Python. Once you enter the Notebook, you can see Help in the menu above for more **Notebook Help** and **User Interface Tour**.
   - Note: Scroll down and you will find an introduction to basic Python commands and packages that are useful for economics. Examples will also be given for students to get an idea how to work with packages and LaTeX.  
   
2. 
   
- In [VS Code](vscode.md) install https://marketplace.visualstudio.com/items?itemName=ms-python.python  ?
- Give a simple example of how to run that script and see a plot (i.e. matlplotlib from the python interpreter there)
- 


# Python Packages 
A **package** is a collection of modules (software library) organized under a single name for distribution and each package contains subpackages and modules filled with lots of tools for scientific computing. See [packages](https://docs.python.org/3/tutorial/modules.html#packages) for more information. Some widely-used packages include: 
* [QuantEcon.py](https://quantecon.org/quantecon-py) - economics 
* [NumPy](http://www.numpy.org) - arrays and vectorized mathematical functions
* [Matplotlib](http://matplotlib.org) - 2D and 3D plotting 
* [SciPy](http://scipy.org) - linear algebra, differential equations, statistics, Fourier transforms, signal processing, etc.
* [pandas](http://pandas.pydata.org) - data analysis

You can check out the [Python Package Index](https://pypi.python.org/pypi) for **all** the available Python packages.

## Example: QuantEcon 
   You can install [QuantEcon.py](https://quantecon.org/quantecon-py) by opening up a terminal and entering the command 
   ```
   pip install quantecon
   ```
   Alternately, you could also just type
   ```
   !pip install quantecon
   ````
   into a cell that is in *edit mode*. 
   
   After installation, you can import the *QuantEcon* package (or any Python package, see [PyPI](https://pypi.org)) into our workspace using the `import` command. It is convenient to import a package with a concise name. For exmaple, the standard importing convention for *QuantEcon* is as follows: 
   ```
   import quantecon as qe
   ```

## Example: Plotting functions 
### Creating NumPy Arrays 
   Same as before, we can load the *NumPy* package into our workspace using the `import` command:
   ```
    import numpy as np
   ```
   To see what is available in this package, just enter `np.<TAB>` (which means type np. into a cell that is in *edit mode* and then hit the TAB key). To check what a specific function is, for example `np.exp`, simply type a question mark behind the function `np.exp?`. 
   
   Now let's see a simple example. Let's make a NumPy array of values from 0 to 3 consisting of 1000 evenly spaced points:
   ```
   x = np.linspace(0,3,1000)
   ```
   
   Now let's use this array of *x* values to generate an array of *y* values *y=sin(x)* Just as before, you can first type `np.sin?` to see the documentation for the sine function in NumPy. Notice that the input is meant to be a NumPy array of values then `np.sin(x)` evaluates sine elementwise - that is, sine applied to every value in the array of x: 
   ```
   y = np.sin(x)
   ```
   ### Plotting with Matplotlib
   Once we have generated the arrays, we can plot all the points using Python's main plotting package *Matplotlib* Same as before, we import *Matplotlib* into our workspace using the `import` command. However, here we will only need to use its subpackage called *Matplotlib.pyplot* and the standard conventino for importing it is as follows:
   ```
   import matplotlib.pyplot as plt
   ```
   The final preparation we need is to instruct the kernel to display our figures inline using the command: 
   ```
   %matplotlib inline
   ```
   Now  we can plot the function *f(x)=cos(x) for x in [0,3]
   ```
   plt.plot(x,y)
   ```
   ### Summary for Plotting 
   In fact, the basic procedure for plotting is: 
   1. Make an array of x values 
   2. Use the array of x values to create an array of y values 
   3. Enter *plt.plot(x,y) 
   4. Add style to the plot usign various *pyplot* commands such as *plt.xlabel, plt.xlim, plt.title*, etc. 
   
   You can check out the [pyplot](https://matplotlib.org/api/pyplot_summary.html) documentation for more options. 
  
   Let's see an interesting demonstration on how to plot the [butterfly curve](https://en.wikipedia.org/wiki/Butterfly_curve_%28transcendental%29)!  
   ![Butterfly curve](https://www.google.com/search?hl=en-CA&tbs=sbi%3AAMhZZiuEtnvTw_1SeWwO07dmy9vXwy7uKasCCXkXRhN-jK2K1lbKk-KcK2IH00urvD8sTbcIB1itfTLj4KJF12P2iM70aHmlMHbn4xUjZlO9mR1g8ymkOFyZBs1F0Mbj46RuHXj9Bdt5l6P6_17MI7FZhzeGPhP91STe23DCBfQLl_1cBN-6NMKJ0e0gbkR3NjsMPgVLes3-w9Iu6kmpO_1Lfkwy6WOzi0gjdwPQXXPhsGi2vgS5O6uDRZRhOkz_14FcD8PPsDIa8CbAxGEnG6hPJKe8jLtQFMuCBiaUQj73y7jzWmMmjjfhdACYYK3teaB8U7HgT0mrefS60j6ZjGRAOzKNFEnj30EbBuA&ei=kUROW6TtBtOC_wSww63QAQ&q=butterfly+curve&oq=butterfly+curve&gs_l=psy-ab.3...0.0.0.13458.0.0.0.0.0.0.0.0..0.0....0...1..64.psy-ab..0.0.0....0.naXtARs59Jg#)
   


