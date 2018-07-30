## Latex Notes and Setup
1. Install [MiKTeX](http://miktex.org/) or [TeX Live](https://www.tug.org/texlive/) or [MacTeX](http://tug.org/mactex/mactex-download.html) or ...
2. Install an editor
    - [VS Code Latex](vscode.md#setup-for-latex) is great
    - [TeX Studio](http://texstudio.sourceforge.net/) is getting left behind
3. *Optional:* Consider a bibtex management tool
    - [Jabref](http://www.jabref.org/), although it is getting buggier and more confusing over time.  You can change the "BibTex key generator" pattern to `[authors3][year]`
    - The key with JabRef is to keep a master `.bib` file for the bibliography, and use the `Tools/New sublibrary based on AUX file` to generate a `.bib` file from the master references for the individual paper.
    - On High Def displays on windows, the current version (v4.x) does not work very well.  See https://help.jabref.org/en/FAQwindows for how to change the display settings.  When v5.0 is released, the problem appears to be fixed
