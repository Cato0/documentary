---
id: NodeEnv
title: NodeEnv
sidebar_label: NodeEnv
---

https://ekalinin.github.io/nodeenv/

https://github.com/ekalinin/nodeenv

https://github.com/isaacs/nave

https://github.com/isaacs/npm

NodeEnv vs. VirtualEnv

# VirtualEnv

# Install

>pip install virtualenv
>pip install nodeenv

## Create new environment

>virtualenv env  # Creates Virtual Environment (Python)

>nodeenv env     # Creates a Folder env, in which your virtual environment for node lives

### Specific Node Version:

>nodeenv --without-ssl --node=0.4.3 --npm=0.3.17 --jobs=4 env-4.3
    
>nodeenv --node=0.10.25 --source env-0.10.25

## List of Node Versions

> nodeenv --list

# Activte Environment

Either:
>. env/Script/activate

Or go into the folder Scripts and type in console:
>activate

# Deactivate

>deactivate_node


# Create from Requirements

>nodeenv --requirement=../prod-requirements.txt --jobs=4 env-copy