# kmeans_clustering.py

# Import necessary libraries
import matplotlib.pyplot as plt
from sklearn.cluster import KMeans
from sklearn.datasets import make_blobs

# --- 1. Generate Sample Data ---
# We will generate a synthetic dataset with 4 distinct clusters.
n_samples = 300
random_state = 170
X, y = make_blobs(n_samples=n_samples, random_state=random_state, centers=4)

# --- 2. Apply the K-Means Algorithm ---
# We initialize KMeans with n_clusters=4, as we know there are 4 blobs.
# 'n_init' is set to 'auto' to let scikit-learn determine the best number of initializations.
# 'random_state' is set for reproducibility of results.
kmeans = KMeans(n_clusters=4, n_init='auto', random_state=random_state)

# Fit the model to the data and predict the cluster for each data point.
y_pred = kmeans.fit_predict(X)

# --- 3. Visualize the Results ---
# Create a scatter plot of the data points, colored by their assigned cluster.
plt.figure(figsize=(8, 6))
plt.scatter(X[:, 0], X[:, 1], c=y_pred, s=50, cmap='viridis')

# Plot the cluster centers (centroids) as red 'X's.
centers = kmeans.cluster_centers_
plt.scatter(centers[:, 0], centers[:, 1], c='red', s=200, alpha=0.75, marker='X')

# Add titles and labels for clarity.
plt.title('K-Means Clustering')
plt.xlabel('Feature 1')
plt.ylabel('Feature 2')
plt.grid(True)

# Save the plot to a file
plt.savefig('kmeans_clusters_python.png')

print("K-Means clustering complete. The visualization has been saved to 'kmeans_clusters_python.png'")

# Show the plot
plt.show()
