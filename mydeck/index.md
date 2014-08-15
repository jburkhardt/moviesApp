---
title       : Movie Finder
author      : Johannes
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Movie Finder

Movie Finder is a web app which helps to select movies.

- The app is created with [R](http://cran.r-project.org/) using the [shiny package](http://shiny.rstudio.com/).
- The data provide movie information and user ratings from IMDB.com. The dataframe is included within the [ggplot2 package](http://ggplot2.org/).

---

## Selection Criteria

The app allows to search through the data of IMDB with the selection of following attributes:

- Year
- Genre
- Budget of movie
- Length of movie
- Ratings from IMDB users
- Number of votes

---

## Results

The app displays the top 10 rated movies of the slection in a bar chart.  
Moreover the raw data are available under the "Data Table" tab.

---

## [Enjoy watching!](http://jburkhardt.shinyapps.io/moviesApp/)