# 02-tidy_data_tidyv.R
#
#  Version 0.0.7
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

# Load dplyr: A Grammar of Data Manipulation package
library("dplyr")
library("lubridate")

# Load reshape2: Flexibly Reshape Data: A Reboot of the Reshape package.
library("reshape2")

if (!file.exists("./data/equine_death_breakdown_raw.csv")) {
  stop("Unable to locate raw data file; please run download_data.R.")
}

# Load file as data frame.
raw <- read_csv("./data/equine_death_breakdown_raw.csv")

# Modify variable names to lower case.
names(raw) <- tolower(names(raw))
names(raw) <- gsub(" ", ".", names(raw))

# Check for explicate null values.
sapply(raw, function(x) sum(is.na(x)))

# Modify variables to data objects.
raw$incident.date <- mdy(raw$incident.date)
raw$incident.type <- parse_factor(raw$incident.type, unique(raw$incident.type))
raw$track <- parse_factor(raw$track, unique(raw$track))
raw$division <- parse_factor(raw$division, unique(raw$division))

#  Load data frame to dplyr.
raw <- select(raw, -(inv.location:racing.type.description))
raw <- select(raw, -(weather.conditions:death.or.injury))

# Review factor variables for possible issues.
sapply(raw, function(x) sum(is.na(x)))

# Correct factor level issues.
raw$track <- gsub("Saratoga Racecourse (NYRA)","Saratoga Gaming & Raceway",
  raw$track,
  fixed=TRUE)

# Filter data to include only equine deaths and exclude 2015. 
raw <- arrange(raw, incident.date)
raw <- filter(raw, incident.type=="EQUINE DEATH")
raw <- filter(raw, year != "2017")

# Add count to cast into new data frames.
raw <- mutate(raw, count = 1)

# TODO(nickhepler): Loading reshape2 cause tidyr error.
# Cast into counts by year, track
equine.track <- dcast(raw, year+track~count, sum)
names(equine.track) <- c("year", "track", "count")

# Correct data frame for zero values
year <- c(2009, 2009, 2011, 2013)
track <- c("Buffalo Raceway", "Tioga Downs", "Vernon Downs", "Batavia Downs")
count <- c(0, 0, 0, 0)
equine.track.missing <- data.frame(year, track, count)
equine.track <- rbind(equine.track, equine.track.missing) 

equine.track <- arrange(equine.track, year, track)

# Cast into counts by year, division
equine.division <- dcast(raw, year+division~count, sum)
names(equine.division) <- c("year", "division", "count")
equine.division <- arrange(equine.division, year, division)

# View modified  data frames  prior to creating final tidy data set
View(raw)
View(equine.division)
View(equine.track)

# Write the data frame as a file.
write.table(raw, "./data/equine_death_breakdown_tidy.csv", sep=",")
write.table(equine.division, "./data/equine_division.csv", sep=",")
write.table(equine.track, "./data/equine_track.csv", sep=",")

# Clean up unused data & variables in the gloabl environment
vars <- ls()
dateDownloaded1 <- dateDownloaded
rm(list=vars)

dateDownloaded <- dateDownloaded1
rm(vars, dateDownloaded1)
