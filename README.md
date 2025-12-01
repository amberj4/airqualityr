# airqualityr

This package provides simple summary statistics and visualizations using the built-in `airquality` dataset in R.

The package includes:  
- `airquality_summary()`: summary statistics for selected variables  
- `plot_box()`: box plots for air quality variables  
- `plot_scatter()`: scatter plots between two variables  
- `plot_line()`: line plots showing trends over time  

The dataset is stored in `inst/extdata` and loaded internally by the functions. All plots are generated using `ggplot2`.

**Note:** Some plots may show gaps or missing points. This is because the original `airquality` dataset contains missing values (`NA`s), and the visualizations accurately reflect the data. No values are artificially filled-in or removed.  


## Installation

You can install the development version from GitHub using `devtools`:  

```R
library(devtools)
install_github("amberj4/airqualityr")
```


## Usage

After installation, load the package and try the functions:  

```R
library(airqualityr)

# Get summary of Ozone
airquality_summary("Ozone")

# Create a box plot
plot_box("Ozone")

# Create a scatter plot between Ozone and Temp
plot_scatter("Ozone", "Temp")

# Create a line plot of Ozone over time
plot_line("Ozone")
```
