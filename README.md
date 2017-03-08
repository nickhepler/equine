# Equine Death and Breakdown in New York State #
__Reproducible Research Project Using R & R Markdown__

_[Nick Hepler](http://www.albany.edu/~nh998156/), [University at Albany](http://www.albany.edu), [College of Engineering and Applied Sciences](http://www.albany.edu/ceas/)_

## Objectives ##
This project examines summary statistics concerning *Equine Death and Breakdown* data obtained from the [New York State Gaming Commission](https://www.gaming.ny.gov/). The data contains information on every horse that has broken down, died, sustained a serious injury, or been involved in an incident at a track in New York State since 2009.

The objective of the author was to utilize the `R` language and environment for statistical computing and graphics to create a reproducible research project. The project employed [Hadley Wickham](http://hadley.nz/)'s [tidyverse](http://tidyverse.org/) collection of `R` packages and principles as outlined in the [R for Data Science](http://r4ds.had.co.nz/) book. The project performs the following steps with the data:

1.   Import
1.   Tidy
1.   Tranform
1.   Visualize

The final report was  written using [R Markdown]( http://rmarkdown.rstudio.com/) from [RStudio](http://rstudio.com/).

## Results Reproduction ##
The intention of this research project is to be reproducible. Reproducible research is the idea that data analyses, and more generally, scientific claims, are published with their data and software code so that others may verify and building upon the findings.

Source the _download_data.R_ file in one of the following manners:

*   From the `R` command line type: `source("download_data.R")`
*   From the Linux/Mac terminal type: `R CMD BATCH download_data.R` from your `R` working director.

## Technical Specifications ##
### Raw Data ###
The following resources concerning the raw data are provided through the New York State Open Data website:
*   [New York State Gaming Commission Equine Death and Breakdown Overview](https://data.ny.gov/api/assets/EF9B4960-2FB7-4E36-90DB-8418719BDDE0?download=true)
*   [New York State Gaming Commission Equine Death and Breakdown Data Dictionary]( https://data.ny.gov/api/assets/4155080B-AE09-4D1A-931C-BC6BE3249BCF?download=true)

### Project Architecture ###
This project utilized a modified version of the [`ProjectTemplate`](http://projecttemplate.net/) package [architecture](http://projecttemplate.net/architecture.html)  available in `R`.

### Required Packages & Versions ###
The following version of `R` was used along with the following packages. These are required to complete the analysis. The version information for these packages is included as of the time of final review.
*   [R version 3.3.2 (2016-10-31) "Sincere Pumpkin Patch"](http://www.r-project.org/)
*   [tidyverse: Easily Install and Load 'Tidyverse' Packages](https://cran.r-project.org/web/packages/tidyverse/index.html)

### Coding Standards ##
The [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) provides the foundation for the coding standards utilized in the `R` source files.

## License
![alt text](http://www.gnu.org/graphics/gplv3-88x31.png "GNU General Public License")

This program is free software: you can redistribute it and/or modify it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.txt) as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
