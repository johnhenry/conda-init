# Conda Initialization Scripts

Create conda environments

## Pre-requesits

To use, you must have conda installed

- [Anaconda](https://www.anaconda.com/products/individual)

## Usage

### Initialize enviornment.yml

When creating a project from scratch run the following command:

- For Mac/Linux

```bash
./conda-init.sh
```

- For Windows

```powershell
.\conda-init.ps1
```

This creates a file named `enviornment.yml` in the current directory.

### Create environment from existing enviornment.yml

If an `enviornment.yml` file already exists,
you can create the conda environment by running the following command:

```bash
conda env create -f enviornment.yml
```

Once finished, this will give you the command to activae and deactivate the environment.

```shell
#
# To activate this environment, use
#
#     $ conda activate <environment name>
#
# To deactivate an active environment, use
#
#     $ conda deactivate

```

### Misc

List all conda environments

```bash
conda env list
```

Remove a conda environment

```bash
conda env remove -n <environment name> --all
```
