## Introduction

This is the programming assignment for the Coursera Course "Exploratory data analysis", week 01.

The Task is to reproduce 4 plots given by the instructors, based on data from the
[UC Irvine Machine Learning Repository](http://archive.ics.uci.edu/ml/).

## Implementation

We have created 5 R scripts to perform the task. These are 4 individual plotting scripts (one for each plot), and one main [script](Script.R) to rule them all.
  * [Main script](Script.R): this script downloads the data from the coursera webpage, unzips it, and performs the plotting by calling the individual plotting scripts.
  * Individual scripts ([Plot1.R](Plot1.R), [Plot2.R](Plot2.R), [Plot3.R](Plot3.R), and [Plot4.R](Plot4.R),): These scripts can be run directly from the cloned repository directory. They are standalone scripts that load the [data](df_selected_dates.rds) required for plotting from the main directory, perform the plotting and put plots in the main cloned repository directory.
