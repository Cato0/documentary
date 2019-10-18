---
id: Jupyter
title: Jupyter
sidebar_label: Jupyter
---


Install with Conda

# Start Server

> jupyter notebook


# Plotting


%matplotlib 		# Enable Plotting 

import matplotlib.pyplot as plt
import numpy as np

x = np.linspace(0, 3*np.pi, 500)
plt.plot(x, np.sin(x**2))
plt.title('A simple chirp');