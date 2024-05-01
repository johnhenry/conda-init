$ENVFILE_NAME = "environment.yml"

$CONDA_ENV_NAME = $args[0] ?? (Split-Path -Path $PWD -Leaf)

$CONDA_PYTHON_VERSION = $args[1] ?? ("3.10.14")

$IMMEDIATE_INPUT = Read-Host "Enter environment name: (${CONDA_ENV_NAME})"
$CONDA_ENV_NAME = if (![string]::IsNullOrEmpty($IMMEDIATE_INPUT)) { $IMMEDIATE_INPUT } else { $CONDA_ENV_NAME }

$IMMEDIATE_INPUT = Read-Host "Enter environment name: (${CONDA_PYTHON_VERSION})"
$CONDA_PYTHON_VERSION = if (![string]::IsNullOrEmpty($IMMEDIATE_INPUT)) { $IMMEDIATE_INPUT } else { $CONDA_PYTHON_VERSION }

Write-Output "Creating environment: $CONDA_ENV_NAME with python version: $CONDA_PYTHON_VERSION"

$FILE = "name: $CONDA_ENV_NAME
channels:
  - defaults
dependencies:
  - python=$CONDA_PYTHON_VERSION
"

Write-Output  "$FILE" > $ENVFILE_NAME
