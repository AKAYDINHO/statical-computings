# linear_regression.R

# Install ggplot2 if you don't have it
# install.packages("ggplot2")
library(ggplot2)

# --- 1. Generate Sample Data ---
# Set a seed for reproducibility
set.seed(0)

# Generate synthetic data with a clear linear relationship
# We'll add some random noise to simulate real-world data.
x <- runif(100, 0, 2) # 100 data points, 1 feature
y <- 4 + 3 * x + rnorm(100, mean = 0, sd = 1) # y = 4 + 3x + noise

# Create a data frame
data <- data.frame(x = x, y = y)

# --- 2. Create and Train the Linear Regression Model ---
# Use the lm() function for linear modeling
model <- lm(y ~ x, data = data)

# --- 3. Print Model Summary ---
# The summary() function provides detailed information about the model,
# including coefficients, R-squared, p-values, etc.
print("Linear Model Summary:")
print(summary(model))

# --- 4. Make Predictions ---
# Predict y values based on the model
data$predicted_y <- predict(model, newdata = data)

# --- 5. Visualize the Results ---
plot <- ggplot(data, aes(x = x, y = y)) +
  geom_point(color = 'blue', alpha = 0.6) + # Plot actual data points
  geom_line(aes(y = predicted_y), color = 'red', linetype = "solid", linewidth = 1.2) + # Plot regression line
  labs(
    title = "Simple Linear Regression in R",
    x = "Independent Variable (X)",
    y = "Dependent Variable (Y)"
  ) +
  theme_minimal()

# Save the plot to a file
ggsave("linear_regression_r.png", plot, width = 8, height = 6, dpi = 300)

print("\nLinear Regression complete. The visualization has been saved to 'linear_regression_r.png'")

# Show the plot
print(plot)
