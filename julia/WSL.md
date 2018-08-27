# Running Julia and QuantEcon with the Windows Services for Linux
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
```

## Installing Python and Conda
Install [Conda](https://docs.anaconda.com/anaconda/install/linux)
- Download the installation script from https://www.anaconda.com/download/#linux 
- Run this with `bash Anaconda3-5.2.0-Linux-x86_64.sh`
- Make sure you have the path added to your `.bashrc`
- Add in the 
```bash
pip install sphinxcontrib-bibtex
```

## Installing Julia
Run the following commands in the directory you want to install within
```bash
wget https://julialang-s3.julialang.org/bin/linux/x64/1.0/julia-1.0.0-linux-x86_64.tar.gz
tar -xzvf julia-1.0.0-linux-x86_64.tar.gz
```
Then make sure it is on your path.  ie. edit `.bashrc` **TODO**
