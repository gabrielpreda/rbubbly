\name{rbubbly}
\alias{rbubbly}
\title{Represent multiple dimmensional data as a Gapminder-like animated plot}
\usage{
Plot a Gapminder-like animated plot
rbubbly(dataset, x_column, y_column, bubble_column, color_column,
                    slider_column, text_column,
                    x_title=NA, y_title=NA, title=NA,
                    x_is_log=TRUE, y_is_log=FALSE,scale_bubble=1)
}
\description{
Represent multiple dimmensional data as a Gapminder-like animated plot.
}
\examples{
---
title: "example: using rbubbly with gapminder"
author: "Gabriel Preda"
output: html_document
---


# Test rbubbly




```{r test_bubbly}
#load gapminder data
library(gapminder)


rbubbly::  rbubbly(dataset = gapminder, x_column = gapminder$gdpPercap, y_column = gapminder$lifeExp,
                 bubble_column = gapminder$pop, color_column = gapminder$continent,
                 slider_column = gapminder$year, text_column = gapminder$country,
                 x_title="GDP per Capita", y_title="Life Expectancy", title='Gapminder Global Indicators',
                 x_is_log = TRUE, scale_bubble = 2)
```
}
