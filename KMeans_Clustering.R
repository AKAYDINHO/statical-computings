# kmeans_clustering.R

# Install ggplot2 if you don't have it
# install.packages("ggplot2")

# Load the ggplot2 library for visualization
library(ggplot2)

# --- 1. Generate Sample Data ---
# Set a seed for reproducibility
set.seed(170)

# Create a dataset with 4 distinct clusters
# We'll generate data from 4 different normal distributions
c1 <- data.frame(x = rnorm(75, 1, 1), y = rnorm(75, 8, 1), cluster = "1")
c2 <- data.frame(x = rnorm(75, 8, 1), y = rnorm(75, 2, 1), cluster = "2")
c3 <- data.frame(x = rnorm(75, -5, 1), y = rnorm(75, 2, 1), cluster = "3")
c4 <- data.frame(x = rnorm(75, -2, 1), y = rnorm(75, -5, 1), cluster = "4")

# Combine into a single dataframe
data <- rbind(c1, c2, c3, c4)

# We will only use the feature columns for clustering
data_for_clustering <- data[, c("x", "y")]


# --- 2. Apply the K-Means Algorithm ---
# We use the built-in kmeans() function from the 'stats' package (loaded by default)
# We set centers=4 because we know there are 4 groups.
# nstart is the number of random sets to choose.
kmeans_result <- kmeans(data_for_clustering, centers = 4, nstart = 25)

# Add the cluster assignments back to the original data frame
data$assigned_cluster <- as.factor(kmeans_result$cluster)

# --- 3. Visualize the Results ---
# Create a scatter plot of the data points, colored by their assigned cluster
plot <- ggplot(data, aes(x = x, y = y, color = assigned_cluster)) +
  geom_point(size = 3) +
  labs(
    title = "K-Means Clustering in R",
    x = "Feature 1",
    y = "Feature 2",
    color = "Cluster"
  ) +
  theme_minimal() +
  theme(legend.position = "right")

# Add the cluster centers to the plot
centers <- as.data.frame(kmeans_result$centers)
plot <- plot + geom_point(data = centers, aes(x = x, y = y), color = "red", size = 5, shape = 4, stroke = 2)

# Save the plot to a file
ggsave("kmeans_clusters_r.png", plot)

print("K-Means clustering complete. The visualization has been saved to 'kmeans_clusters_r.png'")

# Show the plot
print(plot)
