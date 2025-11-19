# linear_regression.py

import numpy as np
import matplotlib.pyplot as plt
from sklearn.linear_model import LinearRegression
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error, r2_score

# --- 1. Generate Sample Data ---
# For simplicity, we'll generate synthetic data with a clear linear relationship.
# We'll add some random noise to simulate real-world data.
np.random.seed(0) # for reproducibility
X = 2 * np.random.rand(100, 1) # 100 data points, 1 feature
y = 4 + 3 * X + np.random.randn(100, 1) # y = 4 + 3x + noise

# --- 2. Split Data into Training and Testing Sets ---
# This is a good practice to evaluate the model's performance on unseen data.
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=0)

# --- 3. Create and Train the Linear Regression Model ---
model = LinearRegression()
model.fit(X_train, y_train)

# --- 4. Make Predictions ---
y_pred = model.predict(X_test)

# --- 5. Evaluate the Model ---
# Print the coefficients (beta_0 and beta_1)
print(f"Intercept (β₀): {model.intercept_[0]:.2f}")
print(f"Coefficient (β₁): {model.coef_[0][0]:.2f}")

# Calculate Mean Squared Error (MSE) and R-squared (R²)
mse = mean_squared_error(y_test, y_pred)
r2 = r2_score(y_test, y_pred)
print(f"Mean Squared Error (MSE): {mse:.2f}")
print(f"R-squared (R²): {r2:.2f}")

# --- 6. Visualize the Results ---
plt.figure(figsize=(10, 7))

# Plot training data
plt.scatter(X_train, y_train, color='blue', label='Training Data')
# Plot testing data
plt.scatter(X_test, y_test, color='green', label='Testing Data')
# Plot the regression line
plt.plot(X_test, y_pred, color='red', linewidth=3, label='Regression Line')

plt.title('Simple Linear Regression')
plt.xlabel('Independent Variable (X)')
plt.ylabel('Dependent Variable (Y)')
plt.legend()
plt.grid(True)
plt.savefig('linear_regression_python.png')
print("\nLinear Regression complete. The visualization has been saved to 'linear_regression_python.png'")
plt.show()
