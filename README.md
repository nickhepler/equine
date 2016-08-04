# Equine Death and Breakdown in New York State #
__Reproducible Research Project Using R & LaTeX__

_Nick Hepler, [University at Albany](http://www.albany.edu), [College of Engineering and Applied Sciences](http://www.albany.edu/ceas/)_

## Objectives ##
This project examines summary statistics concerning *Equine Death and Breakdown* data obtained from the New York State Gaming Commission. The data contains information on every horse that has broken down, died, sustained a serious injury, or been involved in an incident at a track in New York State since 2009.

## Results Reproduction ##
The results in this report can be reproduced using the following procedure:

Download the following files to your `R` working directory:

*   [download_data.R](https://raw.githubusercontent.com/nickhepler/equine/master/download_data.R)
*   [data_preparation.R](https://raw.githubusercontent.com/nickhepler/equine/master/data_preparation.R)
*   [run_analysis.R](https://raw.githubusercontent.com/nickhepler/equine/master/run_analysis.R)

Source the _download_data.R_ file in one of the following manners:

*   From the `R` command line type: `source("download_data.R")`
*   From the Linux/Mac terminal type: `R CMD BATCH download_data.R` from your `R` working director.

## Technical Specifications ##
### Raw Data ###
The following resources concerning the raw data are provided through the the New York State Open Data website:
*   [New York State Gaming Commission Equine Death and Breakdown Overview](https://data.ny.gov/api/assets/EF9B4960-2FB7-4E36-90DB-8418719BDDE0?download=true)
*   [New York State Gaming Commission Equine Death and Breakdown Data Dictionary]( https://data.ny.gov/api/assets/4155080B-AE09-4D1A-931C-BC6BE3249BCF?download=true)

### Project Architecture ###
This project utilised a modified version of the [`ProjectTemplate`](http://projecttemplate.net/) [architecture](http://projecttemplate.net/architecture.html) package available in `R`. 

### Required Packages & Versions ###
The following version of `R` was used along with the following packages. These are required to complete the analysis. The version information for these packages is included as of the time of final review.
*   [R version 3.2.0 (2015-04-16) "Full of Ingredients"](http://www.r-project.org/)
*   [dplyr: A Grammar of Data Manipulation, Version 0.4.1](http://cran.r-project.org/web/packages/dplyr/index.html)
*   [reshape2: Flexibly Reshape Data: A Reboot of the Reshape Package, Version 1.4.1](http://cran.r-project.org/web/packages/reshape2/index.html)

### Coding Standards ##
The [Google's R Style Guide](https://google.github.io/styleguide/Rguide.xml) provides the foundation for the coding standards utilised in the `R` source files.

## License
![alt text](http://www.gnu.org/graphics/gplv3-88x31.png "GPLv3")

This program is free software: you can redistribute it and/or modify it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.txt) as published by the Free Software Foundation, either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

You should have received a copy of the GNU General Public License along with this program.  If not, see <http://www.gnu.org/licenses/>.
