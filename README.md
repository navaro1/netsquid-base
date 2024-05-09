# Netsquid conda environment

This repository contains minimal conda-based setup for running netsquid simulations locally.

## Requirements

- GNU `make`: [source](https://www.gnu.org/software/make/). Run `make -v` to check if it is installed.
- `conda` (or miniconda): [source](https://docs.anaconda.com/free/distro-or-miniconda/). Run `conda -V` to check if it is installed.

## Installation

### What will happen?

- New conda environment called `netsquid` will be created
- `netsquid` conda environment will use python 3.10 and pip 24.0
- The `netsquid` library and all dependencies will be installed into conda environment


### 1. Setting environment variables

Set environment variables in the terminal session (or in your profile file). Here is an example for doing it in terminal
    
```bash
export NETSQUID_USER=your_username
export NETSQUID_PASSWORD=your_password
```

### 2. Create conda environment

```bash
make install/environment
```

### 3. Activate conda environment

```bash
conda activate netsquid
```

### 4. Install netsquid

```bash
make install/netsquid
```

### 5. Verify netsquid dependency installed

```bash
make verify/netsquid
```

### 6. Run basic example

```bash
make run/example
```

## How to use installed conda environment?

Good starting point is to read through [Getting started with conda](https://conda.io/projects/conda/en/latest/user-guide/getting-started.html) manual.
Basically, now you've got an isolated environment that is capable of using `netsquid` as a library. It should not interfere with your base python environment.
Note that `netsquid` will not work outside the conda environment.

Within this conda environment you can freely develop and run `netsquid`-endowed code.

To activate your environment run:
```bash
conda activate netsquid
```

To deactivate your environment run:
```bash
conda deactivate
```

To remove this environment completely run:
```bash
conda deactivate
conda env remove -n netsquid
```