#  01-import_data.R
#
#  Version 0.0.1
#
#  Copyright 2016 Nick Hepler <nick@nickhepler.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#

#  Check for raw data. If present, skip to next file.
if (!file.exists("./data/equine_death_breakdown_raw.csv")) {
  source("./munge/02-tidy_data.R")
}

#  Check for data folder. If missing, create it.
if (!file.exists("data")) {
  dir.create("data")
}

#  Download the data to the path: ./data/equine_death_breakdown_raw.csv.
fileUrl <- "https://data.ny.gov/api/views/q6ts-kwhk/rows.csv?accessType=DOWNLOAD"
download.file(fileUrl,
  destfile = "./data/equine_death_breakdown_raw.csv",
  method = "curl") #  Required for Linux, Mac - use auto for Windows
rm(fileUrl)

list.files("./data")

#  Create a timestamp for the download date.
dateDownloaded <- date()
cache('dateDownloaded')