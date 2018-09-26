# Using GitHub
While you can download files separately from GitHub repositories, you are better off using git itself
- Get a [GitHub](https://github.com/) account ID
    - Apply for the [Student Developer Pack](https://education.github.com/pack) for free stuff (including private repositories)
    - Professors, use [Request a Discount](https://education.github.com/discount_requests/new) instead
- Install a Git client
    - The easiest is to use [GitHub Desktop](https://desktop.github.com/)
    - With [VS Code](vscode.md) there is excellent built-in [Git support](vscode.md#github-integration) within the editor itself.
- Go to the repository you are interested on the github.com website
    - Click on the green `Clone or download` button, and choose `Open in Desktop`
    - You will then have a copy of the git repository on your computer, wherever you choose to store it.    
- Unlike dropbox, GitHub will not automatically modify files on your local computer.  This is a good thing
    - Instead, you can see if there are changes on the server by opening up your git client (e.g. GitHub Desktop)
    - Select the appropriate repository, and it should `Fetch origin` and tell you if there are any changes.  If you want to update them, you can choose the `Pull` from the server.
- To track changes in a repository, you can also choose to `Watch` it at the top of any repository webpage

After the installation of `Git`, if using Windows we recommend opening a console and running
```
git config --global core.eol lf
git config --global core.autocrlf false
```
