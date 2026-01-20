# Installation of Haskell Compiler

This repository requires the **Glasgow Haskell Compiler (GHC)** and
related tools. We recommend installing them via **GHCup**, the official
Haskell toolchain installer.

## What GHCup installs

Using GHCup, the following tools will be installed automatically:

-   **GHC** -- The Glasgow Haskell Compiler
-   **cabal-install** -- Tool for building and managing Haskell packages
-   **Stack** -- A modern build tool for Haskell projects
-   **haskell-language-server (optional)** -- Provides IDE features like auto-completion, error highlighting, etc.

------------------------------------------------------------------------

## Installation Instructions

### For Linux, WSL, or macOS

Run the following command in your terminal:

``` bash
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
```

After installation, the tools will be available in:

    ~/.ghcup/bin

You may need to restart your terminal.

------------------------------------------------------------------------

### For Windows

Run the following command in PowerShell **as Administrator**:

``` powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; 
[System.Net.ServicePointManager]::SecurityProtocol = 
[System.Net.ServicePointManager]::SecurityProtocol -bor 3072; 
iex ((New-Object System.Net.WebClient).DownloadString('https://www.haskell.org/ghcup/sh/bootstrap-haskell.ps1'))
```

The tools will be installed in:

    C:\ghcup\bin

------------------------------------------------------------------------

## Verify Installation

After installation, check:

``` bash
ghc --version
cabal --version
stack --version
```

If these commands work, you are ready to use this repository.

------------------------------------------------------------------------

## More Information

For official documentation and troubleshooting, visit:

https://www.haskell.org/ghcup/
