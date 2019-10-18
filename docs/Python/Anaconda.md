---
id: Anaconda
title: Anaconda
sidebar_label: Anaconda
---

# Anaconda / Python

Path:

    Path: C:/Users/Andre/Anaconda3


conda info

conda list
conda env list  # Shows All Environments

# Create Environment

conda create -n py27 python=2.7
conda create -n py35 python=3.5
conda create -n py36 python=3.6
conda create -n py37 python=3.7

conda remove --name myenv --all # Removes all packages / Entire Environment
conda remove --name py27 -m tensorflow

# How to Use it

Cmd:

activate py27
deactivate                  # Goes back to the base environment

dann alle Dateien starten mit:
    python fileName.py