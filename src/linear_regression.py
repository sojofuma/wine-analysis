import numpy as np
import pandas as pd
import matplotlib.pyplot as plt

df = pd.read_csv('data/wine.csv')

X = df['pH'].values.reshape(-1, 1)
y = df['quality'].values

X_b = np.hstack([np.ones_like(X), X])
beta, residuals, rank, s = np.linalg.lstsq(X_b, y,rcond=None)
y_pred = X_b @ beta

plt.scatter(X, y, label='Data points')
plt.plot(X, y_pred, color='red', label='Fitted line')
plt.xlabel('pH')
plt.ylabel('quality')
plt.legend()
plt.show()
