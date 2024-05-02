# Conda Init

A small script that creates minimal [_conda_](https://conda.io/) environment files
initialized with `name` and `python version`.

Useful for running multiple python projects on the same computer.

Includes versions for bash (mac/linux) and powershell (windows).

## Installation

1. Clone this repository and move into the directory

```shell
git clone git@github.com:johnhenry/conda-init.git
cd conda-init
```

2. Run the appropriate installation script

   - bash:

   ```shell
   bash ./install.sh
   ```

   - powershell:

   ```shell
   pwsh ./install.ps1
   ```

   or place the appropriate script in your path manually.

## Usage

Use the installed script to initialize an environment for a new project.

### Initialize environment.yml

Run the appropriate script inside of a project.

- bash:

```bash
conda-init
```

- powershell:

```powershell
conda-init.ps1
```

This initializes an `environment.yml` file.

Included as part of source control.

## Usage w/conda

Usage for projects that contain an `environment.yml` file

### Create Environment

Use `environment.yml` with _conda_ to create an environment specific to your project.

```bash
conda env create -f environment.yml
```

### Activate Environment

Once created, activate the environment before working on a project.

```shell
conda activate <environment name>
```

(Restarting the shell requires reactivating the environment)

### Deactivate Environment

Deactivate the current environment:

```shell
conda deactivate
```

(or by closing the terminal window)

### List Environments

List existing conda environments:

```shell
conda env list
```

(An asterisk marks the current environment)

### Remove Environment

Remove a conda environment:

```shell
conda env remove -n <environment name> --all
```

(Drop the '--all' flag for windows)
