# Importing Libraries
library(plotly)

# Basic Contour Plot
fig <- plot_ly(
  type='isosurface',
  x = c(0,0,0,0,1,1,1,1),
  y = c(1,0,1,0,1,0,1,0),
  z = c(1,1,0,0,1,1,0,0),
  value = c(1,2,3,4,5,6,7,8),
  isomin=2,
  isomax=6
  )

fig

# Isosurface with Additional Slices
df <- read.csv('https://raw.githubusercontent.com/plotly/datasets/master/clebsch-cubic.csv')
fig <- plot_ly(
  df,
  type='isosurface',
  x = ~x,
  y = ~y,
  z = ~z,
  value = ~value,
  isomin = -100,
  isomax = 100,
  colorscale='RdBu',
  surface = list(show = TRUE, count = 1),
  slices = list(z = list(
          show = TRUE, locations = c(-0.3, 0.5)
  )),
  caps = list(
    x = list(show = FALSE),
    y = list(show = FALSE),
    z = list(show = FALSE)
    )
) 
fig <- fig %>%
  layout(
    margin=list(t = 0, l = 0, b = 0),
    scene=list(
        camera=list(
            eye=list(
                x = 1.86,
                y = 0.61,
                z = 0.98
            )
        )
    )
)

fig
