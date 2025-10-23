library(plotly)

# Basic Contour Plot
fig <- plot_ly(z = ~volcano, type = "contour")
fig


# Question 2: Show contour labels on the previous plot
fig <- plot_ly(
  z = ~volcano,
  type = "contour",
  contours = list(
    showlabels = TRUE,   # ✅ Show contour labels
    labelfont = list(    # Optional: customize label font
      size = 12,
      color = "white"
    )
  )
)

fig

# Set X and Y Coordinates
fig <- plot_ly(
  x = c(-9, -6, -5, -3, -1), 
  y = c(0, 1, 4, 5, 7), 
  z = matrix(c(10, 10.625, 12.5, 15.625, 20, 5.625, 6.25, 8.125, 11.25,  15.625, 2.5, 3.125, 5, 8.125, 12.5, 0.625, 1.25, 3.125,
               6.25, 10.625, 0, 0.625, 2.5, 5.625, 10), nrow = 5, ncol = 5), 
  type = "contour" 
)

fig

# Set Size and Ranges of Contours
fig <- plot_ly(
  type = 'contour',
  z = matrix(c(10, 10.625, 12.5, 15.625, 20, 5.625, 6.25, 8.125, 
               11.25, 15.625, 2.5, 3.125, 5, 8.125, 12.5, 0.625, 
               1.25, 3.125, 6.25, 10.625, 0, 0.625, 2.5, 5.625, 
               10), nrow=5, ncol=5),
  colorscale = 'Jet',
  autocontour = F,
  contours = list(
    start = 0,
    end = 8,
    size = 2
  )
)

fig

