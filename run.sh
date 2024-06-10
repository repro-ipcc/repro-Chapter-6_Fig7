#!/bin/bash

eval "$(conda shell.bash hook)"
conda activate ipcc_ch6f7

DIR=Chapter-6_Fig7

# Get the source figure
# wget https://www.ipcc.ch/report/ar6/wg1/downloads/figures/IPCC_AR6_WGI_Figure_6_7.png


# Apply changes to produce figure of $DIR

echo Patching $DIR
cd $DIR

patch < ../${DIR}.patch

# Run the code
PYTHON_SCRIPT="Fig6.7_violin_regions.py"

# Loop through all regionnum values
regions=(
    [1]="Southern_Asia"
    [2]="Europe"
    [3]="Africa"
    [4]="South_East_Asia_and_Developing_Pacific"
    [5]="Latin_America_and_Caribbean"
    [6]="Eurasia"
    [7]="Asia_Pacific_Developed"
    [8]="Middle_East"
    [9]="North_America_rural"
    [10]="Eastern_Asia"
    [11]="North_America_urban"
    [12]="example"
)

for regionnum in {1..12}
do
    echo "Generating plot for ${regions[$regionnum]}..."
    # Run the Python script and pass regionnum as an argument
    python $PYTHON_SCRIPT $regionnum
    echo "Plot for region $regionnum has been generated."
    # move the figure
    mv ${regions[$regionnum]}.png ../IPCC_AR6_WGI_Figure_6_7_${regions[$regionnum]}.png
    mv ${regions[$regionnum]}.pdf ../IPCC_AR6_WGI_Figure_6_7_${regions[$regionnum]}.pdf
done

python Fig6.7_worldmap_AR6_nocoasts.py
mv worldmap_25.01.21.png ../IPCC_AR6_WGI_Figure_6_7_worldmap_25.01.21.png
mv worldmap_25.01.21.pdf ../IPCC_AR6_WGI_Figure_6_7_worldmap_25.01.21.pdf

echo "All plots have been generated."

# Remove the changes
git checkout Fig6.7_violin_regions.py
git checkout Fig6.7_worldmap_AR6_nocoasts.py
