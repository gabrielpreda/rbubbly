# rbubbly

Represent multiple dimmensional data as a Gapminder-like animated plot

## Getting Started



### Prerequisites

To install this project you will need RStudio (version 1.0.1 or above recommended) and R (version 3.4 or above recommended). Also, you will need to install *plotly* package

```
install.packages("plotly")
```

### Installing

Installation of the project is straightforward using RStudio. Alternativelly, after you build the package archive using RStudio, you can also install the package with the regular R command

````
install.packages("rbubbly")
````

Alternativelly, one can install the package directly from R Console, and without prior download of the package using the command


````
library(devtools)
install_github("gabrielpreda/rbubbly")
````


## Running the tests

To run the tests, you can load the project in RStudio and select *Build*/*Test Package* command from the menu.

## Example of usage

The package includes an example R Markdown example *example/example.Rmd*. This example used *r* package *gapminder* in order to exemplify the usage. You will need to install this package

````
install.packages("gapminder")
````


### Dislay a bubbly plot 


## Load the package

Please make sure you installed the `rbubbly` package.
To install the package, you will need to include this line in your script/RMarkdown/Notebook

````
#load the package
library(rbubbly)
````

## Plot Gapminder Global Indicators

With the data from `gapminder` you can display a plot similar with Gapminder plots, developed by Rosling.
In this example, we will show `Gapminder Global Indicators`, with  `GDP per Capita` on x-axis and `Life Expectancy` on y-axis. For each `country` is shown a bubble. The bubbles size is corelated with the `population` size. Bubble colors are associated with the `continents` (one color for each continent).


````
#load the library gapminder
library(gapminder)

#call the rbubbly function
rbubbly::  rbubbly(dataset = gapminder, x_column = gapminder$gdpPercap, y_column = gapminder$lifeExp,
                 bubble_column = gapminder$pop, color_column = gapminder$continent,
                 slider_column = gapminder$year, text_column = gapminder$country,
                 x_title="GDP per Capita", y_title="Life Expectancy", title='Gapminder Global Indicators',
                 x_is_log = TRUE, scale_bubble = 1)

````

The following plot will appear.

![Gapminder plot](man/figures/gapminder.png "Plot gapminder data")


