# Conda Init

Small script to initialize a minimal [_conda_]() environment file
with `name` and `python version`.

Useful for running multiple small python projects on the same computer.

Includes versions for bash (mac/linux) and powershell (windows).

## Installation

1. Clone the repository and move into the directory

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

## Usage

### Initialize environment.yml

Run the appropriate script inside of a project to initialize a `environment.yml` file.
It should be included as part of source control.

- bash:

```bash
conda-init
```

- powershell:

```powershell
conda-init.ps1
```

## Usage w/conda

Use `environment.yml` with _conda_ to create an environment specific to your project.

```bash
conda env create -f environment.yml
```

Once created, activate the environment before working on a project.
Note that restarting the shell means you will need to re-activate the environment.

```shell
conda activate <environment name>
```

Deactivate the environment by closing the terminal window or running:

```shell
conda deactivate
```

List existing conda environments:

```shell
conda env list
```

Remove a conda environment:

```shell
conda env remove -n <environment name> --all
```
