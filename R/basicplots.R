#' Basic Plots
#'
#' Easily create basic plots using gggplot2
#'
#' @param 'mpg' data used for examples in basic plots
#'
#' Create a scatter plot
#' @example scatterplot(mpg, cyl, cty)
scatter.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_point(color = "red") +
    theme_bw()
}
#' Create a line plot
#' @example line.plot(mpg, cyl, cty)
line.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_line(color = "blue") +
    theme_bw()
}
#' Create a histogram
#' @example histogram.plot(mpg, displ)
histogram.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_histogram(fill = "green", binwidth = .5, col = "black", size = .1) +
    theme_classic()
}
#' Create a box plot
#' @example box.plot(mpg, class, cty)
box.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_boxplot(varwidth = TRUE, fill = "purple") +
    theme_classic()
}
#' Create a jitter plot
#' @example jitter.plot(mpg, cty, hwy)
jitter.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_jitter(width = .5, size = 1) +
    theme_bw()
}
#' Create a jitter plot with smooth line
#' @example jitter.smooth(mpg, cty, hwy)
jitter.smooth <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_point() +
    geom_smooth(method = "lm", se = F) +
    theme_bw()
}
#' Create a violin plot
#' @example violin.plot(mpg, class, cty)
violin.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_violin() +
    theme_bw()
}
