library(plotly)
library(gapminder)


rbubbly <- function(data, xcolumn, ycolumn, bubblecolumn, colorcolumn,
                    slidercolumn, textcolumn, x_is_log=TRUE, y_is_log=FALSE,
                    showSlider=TRUE) {

  if(x_is_log)
    xtype="log"
  else
    xtype=NA

  if(y_is_log)
    ytype="log"
  else
    ytype=NA

  p <-
    plot_ly(data = data,
      x = xcolumn,
      y = ycolumn,
      size = bubblecolumn,
      color = colorcolumn,
      frame = slidercolumn,
      text = textcolumn,
      hoverinfo = "text",
      type = 'scatter',
      mode = 'markers',
      marker = list(opacity = 0.5),sizes = c(10, 500)
    ) %>%
    layout(
      xaxis = list(
        type = xtype
      ),
      yaxis = list(
        type = ytype
      )
    )
  return (p)
}

