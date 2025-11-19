# Linear Regression Example

This project provides Python and R implementations of the Simple Linear Regression algorithm.

## Group Members

- abdikhaliq abdikker
- abdifatah adan
- abubakar omar

## 1. Concept: Simple Linear Regression

Simple Linear Regression is a statistical method that allows us to summarize and study relationships between two continuous (quantitative) variables:

-   One variable, denoted `x`, is regarded as the **predictor**, **explanatory**, or **independent variable**.
-   The other variable, denoted `y`, is regarded as the **response**, **dependent**, or **outcome variable**.

The goal of simple linear regression is to model the relationship between `x` and `y` by fitting a linear equation to the observed data. The equation takes the form:

`Y = β₀ + β₁X + ε`

Where:
-   `Y` is the dependent variable.
-   `X` is the independent variable.
-   `β₀` (beta naught) is the **y-intercept**, representing the value of `Y` when `X` is 0.
-   `β₁` (beta one) is the **slope**, representing the change in `Y` for a one-unit change in `X`.
-   `ε` (epsilon) is the **error term**, accounting for the variability in `Y` that cannot be explained by `X`.

The method typically used to find the best-fitting line is the **Ordinary Least Squares (OLS)** method, which minimizes the sum of the squared differences between the observed `y` values and the `y` values predicted by the linear model.

### How the Algorithm Works

1.  **Formulate the Model**: Define the linear relationship `y = β₀ + β₁x + ε`.
2.  **Estimate Coefficients**: Use statistical methods (like OLS) to estimate the unknown parameters `β₀` and `β₁` from the given dataset. These estimated values are denoted as `b₀` and `b₁`.
3.  **Predict**: Once `b₀` and `b₁` are found, the regression line `ŷ = b₀ + b₁x` can be used to predict the value of the dependent variable `ŷ` (y-hat) for any given value of `x`.
4.  **Evaluate**: Assess the goodness of fit of the model using metrics like R-squared, p-values, and by examining residual plots.

### Assumptions of Linear Regression

For the OLS estimates to be unbiased and efficient, and for hypothesis testing to be valid, several assumptions should ideally hold:

1.  **Linearity**: The relationship between X and Y must be linear.
2.  **Independence of Errors**: The residuals (errors) should be independent of each other.
3.  **Homoscedasticity**: The variance of the residuals should be constant across all levels of X.
4.  **Normality of Errors**: The residuals should be normally distributed.
5.  **No Multicollinearity** (for multiple linear regression): Independent variables should not be highly correlated with each other.

### Applications

-   **Sales Forecasting**: Predicting future sales based on advertising spending.
-   **Economic Analysis**: Modeling the relationship between inflation and unemployment.
-   **Medical Research**: Studying the effect of drug dosage on patient recovery time.
-   **Real Estate**: Estimating house prices based on features like size or number of bedrooms.

## 2. Scripts

This repository contains the following scripts:

- `linear_regression.py`: A Python script using `scikit-learn` and `matplotlib` to perform and visualize Simple Linear Regression.
- `linear_regression.R`: An R script using base R functions and `ggplot2` to perform and visualize Simple Linear Regression.

### Running the Python Script

To run the Python script, you need Python with the `scikit-learn` and `matplotlib` libraries.

```bash
pip install scikit-learn matplotlib
```

Then, run the script from your terminal:

```bash
python linear_regression.py
```

### Running the R Script

To run the R script, you need R with the `ggplot2` library.

```R
install.packages("ggplot2")
```

Then, run the script using `Rscript` or from an R environment:

```bash
Rscript linear_regression.R
```
