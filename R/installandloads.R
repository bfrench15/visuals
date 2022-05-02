#' Package Installation and Calling
#'
#' Quickly install and load packages for creating visual analytics in R.
#'
vizpackages <- function() {
  install.packages("colourpicker")
  library(colourpicker)
  install.packages("RColorBrewer")
  library(RColorBrewer)
  install.packages("esquisse")
  library(esquisse)
  install.packages("ggplot2")
  library(ggplot2)
  install.packages("ggvis")
  library(ggvis)
  install.packages("ggalt")
  library(ggalt)
  install.packages("lattice")
  library(lattice)
  install.packages("plotly")
  library(plotly)
  library(ggcorrplot)
  install.packages("quantmod")
  library(quantmod)
  print("Basic packages for data visualization now installed.")
  print("ColourPicker, RColorBrewer, Esquisse, GGPlot2, GGVis, Lattice, Plotly")
}
