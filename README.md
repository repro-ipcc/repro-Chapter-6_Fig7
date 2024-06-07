# ipcc-ar6-wg1-figure Chapter 7 Figure 6



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

SVGs and PNGs will be generated in the root path

