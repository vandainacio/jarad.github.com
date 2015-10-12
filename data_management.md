---
layout: page
title: "Data Management"
description: ""
---
{% include JB/setup %}

# Data Management

This page is devoted to helping scientists I interact with organize their data for reproducibility and ease of analysis. This page is primarily concerned with the creation and storage of [raw data](https://en.wikipedia.org/wiki/Raw_data) and not with the creationg or storage of derived data that will typically be used for data analysis. To construct derived data, you should be using a script in a software problem, e.g. [R](http://r-project.org/).

To construct this page, I used many sources including 

- [NOAA - Data Management Best Practices](http://www.ncddc.noaa.gov/activities/science-technology/data-management/)
- [ESA Bulletin - Some Simple Guidelines for Effective Data Management](http://www.esajournals.org/doi/abs/10.1890/0012-9623-90.2.205)

## What is raw data?

For the purpose of this page, 

> raw data is a digital version of non-digital information. 

Basically, raw data is a digitized version of a lab notebook or a print-out from a machine. When a machine provides a digital version, then it is just that file exactly as it came from the machine. 

## Tips in preparing raw data files

The main goal with these tips are to simplify the raw data creation process in order to minimize mistakes and maximize reproducibility.

### Store the data in a nonproprietary software format

I prefer the use of plain text files for raw data, e.g. comma delimited textfile (.csv). Propietary formats include Excel and Access and should be avoided for raw data. 

### Store the data in nonproprietary hardward formats (and back it up)

Storing data on the internet is probably the best route here. This can be done without releasing data, e.g. as a private [github](http://github.com/) repository. Some organizations have begun to provide a place for data storage, e.g. [Ecological Archives](http://esapubs.org/archive/default.htm) or [Dryad](http://datadryad.org/). In addition, all raw data should be backed up, e.g. on your computer's hard drive. 

### Provide a descriptive file name

The file name should provide details of the place, time, and theme of the data contained within. 


## Tips in preparing the raw data

### Write each piece of information only once

For example, you run an experiment at a bunch of sites that are visited repeatedly and each site has a set of explanatory variables that may be important. You should have one and only one place where all of this information is stored. 

Many times I receive data where this information has been cut-and-pasted to many spreadsheets. Instead you should use a script to combine the site information

### Include a header row that describes the variables in the first line

Use informative variable names as the first row in the data file. 

### Provide an identification to the original non-digital data

In the raw data, you should have an identification that allows you to go back and check the original non-digital data. For example, you might have a column in the raw data that references the lab notebook number. Including the identification allows you to go back and check the original source to verify that the raw data are correct. 

### Use plain ASCII text

Use plain ASCII text for your file names, header rows, and data values. [This](https://en.wikipedia.org/wiki/ASCII#ASCII_printable_code_chart) table from wikipedia has all the ASCII characters in the Glyph column. 

### Record full dates using standardized formats

In R, the only two Date formats that are recognized are "%Y-%m-%d" and "%Y/%m/%d". 