#!/bin/csh
if ($#argv != 2) then
        echo "Usage: $0 Date RunNum"
	echo "HADD all histograms from MC to single ptHat bin files."
        goto done
endif
cd npeC0_1/
hadd -f pythia_tree_$1_$2_C0_1.root NpeCHcorr*.root
cd ../npeC1_2/
hadd -f pythia_tree_$1_$2_C1_2.root NpeCHcorr*.root
cd ../npeC2_4/
hadd -f pythia_tree_$1_$2_C2_4.root NpeCHcorr*.root
cd ../npeC4_8/
hadd -f pythia_tree_$1_$2_C4_8.root NpeCHcorr*.root
cd ../npeC8_16/
hadd -f pythia_tree_$1_$2_C8_16.root NpeCHcorr*.root
cd ../npeC16_32/
hadd -f pythia_tree_$1_$2_C16_32.root NpeCHcorr*.root
cd ../npeC32_64/
hadd -f pythia_tree_$1_$2_C32_64.root NpeCHcorr*.root
cd ../npeC64_128/
hadd -f pythia_tree_$1_$2_C64_128.root NpeCHcorr*.root

cd ../npeB0_1/
hadd -f pythia_tree_$1_$2_B0_1.root NpeBHcorr*.root
cd ../npeB1_2/
hadd -f pythia_tree_$1_$2_B1_2.root NpeBHcorr*.root
cd ../npeB2_4/
hadd -f pythia_tree_$1_$2_B2_4.root NpeBHcorr*.root
cd ../npeB4_8/
hadd -f pythia_tree_$1_$2_B4_8.root NpeBHcorr*.root
cd ../npeB8_16/
hadd -f pythia_tree_$1_$2_B8_16.root NpeBHcorr*.root
cd ../npeB16_32/
hadd -f pythia_tree_$1_$2_B16_32.root NpeBHcorr*.root
cd ../npeB32_64/
hadd -f pythia_tree_$1_$2_B32_64.root NpeBHcorr*.root
cd ../npeB64_128/
hadd -f pythia_tree_$1_$2_B64_128.root NpeBHcorr*.root

cd .. # end in main directory
