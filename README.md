# ipcc-ar6-wg1-figure Chapter 6 Figure 7

| Input | Running | Output | Quality | Post-process |
|-------|---------|--------|---------|--------------|
| ![Code](https://img.shields.io/badge/Code-Complete-green) <br> ![Dependence](https://img.shields.io/badge/Dependence-Complete-green) <br> ![Data](https://img.shields.io/badge/Data-Complete-green) | ![Running](https://img.shields.io/badge/Running-green) | ![Full](https://img.shields.io/badge/0/13-Full-green) <br> ![Partial](https://img.shields.io/badge/13/13-Partial-orange) <br> ![Missing](https://img.shields.io/badge/0/13-Missing-red) | ![Same](https://img.shields.io/badge/12/13-Same-green) <br> ![Similar](https://img.shields.io/badge/1/0-Similar-orange) <br> ![Different](https://img.shields.io/badge/1/13-Different-red) | ![Auto](https://img.shields.io/badge/Auto-orange) ![Manual](https://img.shields.io/badge/Manual-orange) |

Project to re-create the IPCC AR6 WG1 figures. See https://ipcc.ch and https://github.com/IPCC-WG1

The instructions are meant to run a recent ubuntu Linux system.

Download the Anaconda Miniforge installer from:
https://conda-forge.org/miniforge/

Install Miniforge:
sh Miniforge3*.sh

Disconnect from your shell and reconnect to install the new commands.

Clone this repository and connect to it.

Install the submodules:
```sh
git submodule init
git submodule update
```

Download the dataset:

```sh
bash download.sh
```

Install the conda environment:

```sh
bash install.sh
```

To re-create the figure of Chapter 6 Figure 7:

```sh
bash run.sh
```

PDFs and PNGs will be generated in the root path


## Issues

### 2024-06-10

The generated images are part of the final figure and need to be combined into one big image. Additionally, the x-axis labels are missing.