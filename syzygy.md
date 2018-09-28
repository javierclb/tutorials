# Syzygy Tutorial

The current syzygy setup can only be used by UBC Economics department students, faculty, and employees.  To login, use your CWL on https://vse.syzygy.ca/ 

These notes supplment those at: http://intro.syzygy.ca/troubleshooting/ which mostly apply to the VSE setup.

## Jupyter Lab Features
Some of the key jupyterlab features to consider are:
- Get unicode for symbols with latex commands and `<TAB>`.  Try to type `\alpha<TAB>` to get 
  - Note: the first time you do it, the unicode completion will be very slow.

## Terminal

### How do I open a terminal?
Syzygy provides a linux terminal to your account, with a large set of linux tools.  To open a terminal:
1. If you do not have a "Launcher" tab, then choose `/File/New Launcher` or else `<Ctrl-Shift-L>`
2. From the launcher, choose `Terminal`

### How do I use the terminal?
A few general hints
- Use `<Shift-Insert>` to paste and `<Ctrl-Insert>` to copy
- Use unix commands to list files `ls` or change directories `cd`

## Accessing Git and Github
All git commands can be done through the terminal

### How do I clone a repository?
1. First, find the URL for the repostiory.  For example, https://github.com/ubcecon/ECON628_2018.git, where you will need the `.git` at the end.
2. Next, in the terminal type (or use `<shift-insert>` to paste
```bash
git clone https://github.com/ubcecon/ECON628_2018.git
```
3. You can browse notebooks and files in the Jupyterlab File Browser

### How do I update a repository?
1. Use `cd` to change to that repo in the terminal
2. Type `git pull`
```
cd ECON628_2018
git pull
```
But keep in mind that git will never overwrite local changes to files unless you choose to.  Furthermore, whenever you run notebooks they modify, so if you want to get the latest versions of a notebook you will need to overwrite local changes

### How do I update a repository and overwrite local changes?
1. Use `cd` to change to that repo in the terminal
2. Then reset and pull
```bash
git fetch origin; git reset --hard HEAD; git pull
```
This will overwrite everything, but will not modify your local files.

## Troubleshooting
See http://intro.syzygy.ca/troubleshooting/

## The Julia package manager is mishehaving.  How do I delete all of my local julia packages?
In a terminal, recursively delete the `~/.julia` directory with
```bash
rm -r .julia
```

## How do I restart my server?
1. In the Jupyterlab  `Commands`tab, type to get `Launch Classic Notebook`.
2. Choose `Control Panel` at the top
3. Choose "Stop My Server" 
4. Close all browser tabs, and login to https://vse.syzygy.ca/ again
