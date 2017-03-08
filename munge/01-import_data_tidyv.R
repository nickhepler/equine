#  01-import_data_tidyv.R
#
#  Version 0.0.9
#
#  Copyright 2016-2017 Nick Hepler <nick@nickhepler.com>
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

# Define packages to be loaded
pckgs <- c("readr", "ProjectTemplate")

# Load packages to be loaded
lapply(pckgs, require, character.only = TRUE)

#  Download the data to the Global Envrionment.
raw <- read_csv("https://data.ny.gov/api/views/q6ts-kwhk/rows.csv?accessType=DOWNLOAD")

#  Create a timestamp for the download date.
dateDownloaded <- date()
cache('dateDownloaded')
rm(dateDownloaded)

#  Write the data to the Global Envrionment.
write_csv(raw, "./data/equine_death_breakdown_raw.csv")

# TODO(nickhepler): Detach all packages