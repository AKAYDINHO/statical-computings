# K-Means Clustering Example

This project provides Python and R implementations of the K-Means clustering algorithm.

## Group Members

- abdikhaliq abdikker
- abdifatah adan
- abubakar omar

## 1. Concept: K-Means Clustering

K-Means is one of the most popular unsupervised machine learning algorithms. It is used for **clustering**, which is the task of grouping a set of objects in such a way that objects in the same group (called a cluster) are more similar to each other than to those in other clusters.

The main objective of the K-Means algorithm is to partition a dataset with 'n' observations into 'k' distinct, non-overlapping clusters.

### How the Algorithm Works

The K-Means algorithm works iteratively through the following steps:

1.  **Initialization**: Choose 'k' initial cluster centers (centroids). A common method is to randomly select 'k' data points from the dataset.
2.  **Assignment Step**: Assign each data point to the nearest centroid. The "nearness" is typically measured using the Euclidean distance.
3.  **Update Step**: Recalculate the centroids of the newly formed clusters. The new centroid is the mean (average) of all data points assigned to that cluster.
4.  **Repeat**: Steps 2 and 3 are repeated until the cluster assignments no longer change, or a maximum number of iterations is reached. The algorithm has converged when the assignments are stable.

### Choosing the Right Number of Clusters (k)

The number of clusters, 'k', is a hyperparameter that must be specified before running the algorithm. The choice of 'k' can significantly impact the quality of the clustering. A common method for determining the optimal 'k' is the **Elbow Method**:

1.  Run the K-Means algorithm for a range of 'k' values (e.g., from 1 to 10).
2.  For each 'k', calculate the **Within-Cluster Sum of Squares (WCSS)**. WCSS is the sum of squared distances between each data point and its centroid.
3.  Plot the WCSS for each 'k'.
4.  The "elbow" of the curve—the point where the rate of decrease in WCSS sharply slows down—is a good estimate for the optimal 'k'.

### Use Cases and Applications

- **Customer Segmentation**: Grouping customers based on purchasing behavior, demographics, or website usage.
- **Document Analysis**: Clustering documents based on their topics.
- **Image Compression**: Grouping similar colors together to reduce the number of colors in an image.
- **Anomaly Detection**: Identifying outliers that do not belong to any cluster.

### Assumptions and Limitations

- **Spherical Clusters**: K-Means assumes that clusters are spherical and evenly sized, which may not be true for all datasets.
- **Sensitivity to Initialization**: The initial placement of centroids can influence the final clustering result. Running the algorithm multiple times with different initializations (`n_init` in scikit-learn) helps mitigate this.
- **Need to Specify 'k'**: The number of clusters 'k' must be determined beforehand.
- **Impact of Outliers**: K-Means is sensitive to outliers, which can skew the cluster centroids.

## 2. Scripts

This repository contains the following scripts:

- `kmeans_clustering.py`: A Python script using `scikit-learn` and `matplotlib` to perform and visualize K-Means clustering.
- `kmeans_clustering.R`: An R script using base R and `ggplot2` to perform and visualize K-Means clustering.

### Running the Python Script

To run the Python script, you need Python with the `scikit-learn` and `matplotlib` libraries.

```bash
pip install scikit-learn matplotlib
```

Then, run the script from your terminal:

```bash
python kmeans_clustering.py
```

### Running the R Script

To run the R script, you need R with the `ggplot2` library.

```R
install.packages("ggplot2")
```

Then, run the script using `Rscript` or from an R environment:

```bash
Rscript kmeans_clustering.R
```
