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
   - Note: Scroll down and you will find an introduction to basic Python commands and packages that are useful for economics. A test program will also be given for students to get an idea of what Jupyter Notebooks could do. 
   
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
   into a cell that is in *edit mode*. After installation, you can import the *QuantEcon* package (or any Python package, see [PyPI](https://pypi.org) into our workspace using the `import` command. It is convenient to import a package with a concise name. For exmaple, the standard conventino for importing *QuantEcon* is as below:
    ```julia
    include("setup.jl")
    ```

## Example: Plotting functions 
### Creating NumPy Arrays 
   Same as before, we can import the NumPy package into our workspace using the `import` command. It is convenient to import a package with a concise name. For exmaple, the standard conventino for importing NumPy is as below: 



