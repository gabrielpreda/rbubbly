
# rbubbly
#
# This package is used to plot animated and interactive bubble charts using Plotly
# Inspiration: https://github.com/AashitaK/bubbly
#


rbubbly <- function(dataset, x_column, y_column, bubble_column, color_column,
                    slider_column, text_column,
                    x_title=NA, y_title=NA, title=NA,
                    x_is_log=TRUE, y_is_log=FALSE,scale_bubble=1) {

  library(plotly)
  library(RColorBrewer)

  if(x_is_log)
    xtype="log"
  else
    xtype=NA

  if(y_is_log)
    ytype="log"
  else
    ytype=NA

  xmin = min(x_column)
  xmax = max(x_column)
  ymin = min(y_column)
  ymax = max(y_column)
  smin = scale_bubble * sqrt(xmin*ymin)
  smax = scale_bubble * sqrt(xmax*ymax)
  p <-
    plot_ly(data = data,
      x = x_column,
      y = y_column,
      size = bubble_column,
      color = color_column,
      frame = slider_column,
      text = text_column,
      hoverinfo = "Country: ~text",
      type = 'scatter',
      mode = 'markers',
      marker = list(opacity = 0.5),
      sizes = c(smin, smax)
    ) %>%
    layout(
      title = title,
      xaxis = list(
        title = x_title,
        type = xtype
      ),
      yaxis = list(
        title = y_title,
        type = ytype
      )
    )
  return (p)
}

