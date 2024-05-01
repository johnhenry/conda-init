#!/bin/bash
ENVFILE_NAME=environment.yml

IN=$1
CONDA_ENV_NAME=${PWD##*/}
CONDA_ENV_NAME="${IN:-$CONDA_ENV_NAME}"

CONDA_PYTHON_VERSION=3.10

read -p "Enter environment name: (${CONDA_ENV_NAME}) " IMMEDIATE_INPUT
CONDA_ENV_NAME="${IMMEDIATE_INPUT:-$CONDA_ENV_NAME}"

read -p "Enter environment version: (${CONDA_PYTHON_VERSION}) " IMMEDIATE_INPUT
CONDA_PYTHON_VERSION="${IMMEDIATE_INPUT:-$CONDA_PYTHON_VERSION}"

echo "Creating environment: $CONDA_ENV_NAME with python version: $CONDA_PYTHON_VERSION"
conda create -n $CONDA_ENV_NAME python=$CONDA_PYTHON_VERSION -y

echo "Creating environment file: $ENVFILE_NAME"
conda env export -n $CONDA_ENV_NAME > $ENVFILE_NAME