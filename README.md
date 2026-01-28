## GAIA-C (Galaxy Air Investigation and Analysis for Citizens) - A scalable Galaxy workflow interface for air pollution research. 
======================================

:whale: Galaxy Docker repository for the analysis of pollution and meteorological data.

# Installed tools

 * [GAIAC Bias Calculation](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_bias_calculation)
 * [GAIAC Box Plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_boxplot)
 * [GAIAC data averaging tool](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_data_averaging)
 * [GAIAC heatmap](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_heatmap)
 * [GAIAC outlier handling](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_outlier_removal)
 * [GAIAC PM data pulling](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_pm_data_pulling)
 * [GAIAC precision calculation](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_precision_calculation)
 * [GAIAC ratio scatter plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_ratio_scatter_plot)
 * [GAIAC regression plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_regression_plot)
 * [GAIAC sensor performance evaluation](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_sensor_performance_evaluation)
 * [GAIAC time series plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_time_series)
 * [GAIAC data synchronization](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_time_sync)
 * [GAIAC violin plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_violin_plot)
 * [GAIAC wind rose plot](https://github.com/jaidevjoshi83/gaiac/tree/main/gaiac_windrose_plot)

# Requirements

 - [Docker](https://docs.docker.com/installation/) for Linux / Windows / OSX

# Usage

To launch:

```
docker run --rm -i -t --privileged -p 8080:80 jayadevjoshi12/galaxy_gaiac:latest
```

For persistent data storage:

```
docker run --rm -i -t --privileged -p 8080:80 -v /home/<username>/export.gaiac/:/export jayadevjoshi12/galaxy_gaiac:latest
```

### Two example workflows are provided here:

* [Galaxy-Workflow-Cleaned_Data_Plotting.ga](https://github.com/jaidevjoshi83/gaiac_docker/blob/main/workflows/Galaxy-Workflow-Cleaned_Data_Plotting.ga)

* [Galaxy-Workflow-Unnamed_Workflow.ga](https://github.com/jaidevjoshi83/gaiac_docker/blob/main/workflows/Galaxy-Workflow-Unnamed_Workflow.ga)


### A detailed tutorial to execute these workflows is provided here: 

* [GAIAC_Workflow_Tutorial.pdf](https://github.com/jaidevjoshi83/gaiac_docker/blob/main/workflows/Galaxy-Workflow-Unnamed_Workflow.ga)


For more details about this command line or specific usage, please consult the
[`README`](https://github.com/bgruening/docker-galaxy/blob/master/README.md) of the main Galaxy Docker image, on which the current image is based.

# Contributers

 - Jayadev Joshi
 - Daniel Blankenberg

# Support & Bug Reports

You can file an [github issue](https://github.com/jaidevjoshi83/gaiac_docker/issues) 