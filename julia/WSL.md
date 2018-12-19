# Running Julia and QuantEcon with the Windows Services for Linux
**TODO**  Create a BASH script for all?
## Installing WSL with Ubuntu
See https://docs.microsoft.com/en-us/windows/wsl/install-win10  but basically
- Run PowerShell as an administrator (i.e. right-click on the icon and choose `Run as Administrator`
- Run `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux` 
- Go to the Windows Store and search for `Ubuntu` or run [Ubuntu](https://www.microsoft.com/en-ca/p/ubuntu/9nblggh4msv6?rtc=1&activetab=pivot%3aoverviewtab) and choose get
  - Click on `Get` in the Windows Store, login to your Microsoft Account, etc.
  - You probably want to choose to `Pin to Start`
- Launch Ubuntu and let the installation complete, creating an administrator password and username
- To install some important things
```bash
sudo apt install make
sudo apt-get install libxt6 libxrender1 libgl1-mesa-glx libqt5widgets5
```

## Installing Julia and Python
Install [Anaconda](https://www.anaconda.com/download/#linux) 
- Download the installation script and then run it.  With the current version
```bash
wget https://repo.anaconda.com/archive/Anaconda3-5.2.0-Linux-x86_64.sh
bash Anaconda3-5.2.0-Linux-x86_64.sh
```
- Do not install `vscode`
- When it asks, make sure you add the binary file to your path by editing your `.bashrc`
- Add in the additional python dependencies

Install Julia

## Installing Julia
Run the following commands in the directory you want to install within
```bash
wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.3-linux-x86_64.tar.gz
tar -xzvf julia-1.0.3-linux-x86_64.tar.gz
```

## Install Python Dependencies
Assuming you installed anaconda in your home directory (for `USERNAME`) then,

```bash
export PATH=/home/USERNAME/anaconda3/bin:$PATH
pip install sphinxcontrib-bibtex
```

## Edit the path and bash
To edit your `.bashrc`
- Within your home directory, `edit .bashrc`
- This opens Vim.  Go to the bottom of the file, and type `i` to enter insert mode.
- Add something like the following:
```bash
export PATH=/home/USERNAME/anaconda3/bin:/home/USERNAME/julia-1.0.3/bin:$PATH
```
- Hit `<Esc>` to exit insert mode, and then type `:x` to save and exit.
- If you are often loading files in your Windows system, it can be useful to add a symlink.  To do this from your home directory, with your Windows username as `WINDOWSUSERNAME`, do something like the following
```bash
ln -s /mnt/c/Users/WINDOWSUSERNAME/Documents/GitHub Documents
```
- Restart Ubuntu so paths take effect

## To Run IJulia
- Run `julia` and then type
```julia
] add IJulia Plots; precompile
```
- Then in the console type
```bash
jupyter lab
```
- To access it from your browser (on Windows), look at the Jupyter output to find a link such as 
`http://localhost:8888/?token=BIGTOKEN`.  Copy this into your browser.
