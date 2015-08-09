# ReadMe
## Introduction
### Energy usage over a 2-day period in February, 2007 
__This repo is for the course project of "Exploratory Data Analysis" organized by Jeff Leek, PhD, Roger D. Peng, PhD, Brian Caffo, PhD, at Johns Hopkins, through Coursera.__ The original repo is at: https://github.com/rdpeng/ExData_Plotting1

The original data are from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine Learning Repository</a>, a popular repository for machine learning datasets. In particular, this analysis uses "Individual household
electric power consumption Data Set":

* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Content

### R script
The 4 R scripts (plot1.R, plot2.R, plot3.R, and plot4.R) read the energy usage data over the 2-day period
in Feburary, 2007 (from 2007-02-01 to 2007-02-02), and construct the 4 plots (described below) using the base plotting system in R.

### Plot files

Each plot was saved as a PNG file with a width of 480 pixels and a height of 480 pixels.

* plot1.png: a histogram of "Global Active Power" distribution.

* plot2.png: a plot of "Global Active Power" vs. time.

* plot3.png: a plot of "Energy sub metering" vs. time.

* plot4.png: a figure with 4 plots (2 by 2 panels) describing the variation of "Global Active Power", "Voltage", "Energy sub metering", and "Global reactive power" with time, respectively.

