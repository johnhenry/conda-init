# Conda Initialization Scripts

Create conda environments

## Pre-requesits

To use, you must have conda installed

- [Anaconda](https://www.anaconda.com/products/individual)

## Installation

For powershell/windows, install the executable by running the following:

```powershell
pwsh ./install.ps1
```

For bash/mac/linux, install the executable by running the following:

```bash
bash ./install.sh
```

## Usage

### Initialize enviornment.yml

When creating a project from scratch run the following command:

- For Mac/Linux

```bash
conda-init
```

- For Windows

```powershell
conda-init.ps1
```

This creates a file named `enviornment.yml` in the current directory.

### Create environment from existing enviornment.yml

If an `enviornment.yml` file already exists,
you can create the conda environment by running the following command:

```bash
conda env create -f enviornment.yml
```

### Misc

Activate conda environment

```shell
conda activate <environment name>
```

List all conda environments

```bash
conda env list
```

Remove a conda environment

```bash
conda env remove -n <environment name> --all
```
