# Analysis of Missing Values in Titanic Dataset
This repository contains R code for analyzing missing values in data using visualization techniques.

# Data
The Titanic dataset is a historical dataset containing information about passengers aboard the Titanic, including whether they survived or not. It is commonly used in data analysis and machine learning tutorials.

# Files
* code.R: custom R functions.
* _targets.R: a special script to configure and define the pipeline.
* sessionInfo.txt: contains information about the R session, including the version of R and installed packages.
* Dockerfile: contains instructions for building a Docker image.
* run.R: to execute the R code and run the analysis or pipeline defined in the project.
* na.png: output from the analysis.
* Reproducible.Rproj: This is a project file created by RStudio.

# Installation with _targets
1. install.packages("targets") to install the package.
2. tar_manifest() and tar_visnetwork() to check the pipeline for correctness.
3. tar_make() or similar to run the pipeline.
4. tar_read() to read target output.

# Installation with Docker
To use Docker for running the code in this repository, follow these steps:

1. Build the Docker image using the provided Dockerfile:
   
* docker build -t reproducible_pipeline -f path_to_docker\Dockerfile directory
* for my computer: docker build -t reproducible_pipeline -f D:\Reproducible\Reproducible\Dockerfile D:\Reproducible\Reproducible

2. Run the Docker container with the built image:
   
* docker run --rm --name reproducible_pipeline -v directory:directory reproducible_pipeline
* for my computer: docker run --rm --name reproducible_pipeline -v D:\Reproducible\Reproducible:/Reproducible/Reproducible reproducible_pipeline

# Functions
This project provides R functions for analyzing missing values in datasets. The main functions are:

* get_data(): Retrieves the Titanic dataset for analysis.
* msv_1(df, ...): Generates a bar plot showing the percentage of missing values per column in the dataset.
* save_plot(save_path, plot): Saves the generated plot to the working directory.

# Usage
You can use the provided functions to analyze missing values in your dataset by following the code examples provided in the repository

