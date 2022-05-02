#' Advanced Plot Functions
#'
#' Easily create more advanced plots using ggplot2
#'
#' @details 'mtcars' and 'mpg' used for examples
#'
#' Create a counts plot
#' @example count.plot(mpg, cty, hwy)
count.plot <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_count(col = "dodgerblue2") +
    theme_bw()
}
#' Create correlation plot
#' @example corr <- round(cor(mtcars), 1)
#' @example corr.plot(corr)
corr.plot <- function(data) {
  ggcorrplot(data, hc.order = T,
             type = "lower",
             lab = T,
             lab_size = 3,
             method = "circle",
             colors = c("tomato2", "white", "springgreen3"),
             ggtheme = theme_bw)
}
#' Create area chart
#' @example area.chart(mtcars, mpg, hp)
area.chart <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_area()
}
#' Create a diverging bar chart
#' @example mtcars$`car name` <- rownames(mtcars)
#' @example mtcars$mpg_z <- round((mtcars$mpg - mean(mtcars$mpg))/sd(mtcars$mpg), 2)
#' @example mtcars$mpg_type <- ifelse(mtcars$mpg_z < 0, "below", "above")
#' @example mtcars <- mtcars[order(mtcars$mpg_z), ]
#' @example mtcars$`car name` <- factor(mtcars$`car name`, levels = mtcars$`car name`)
#' @example diverging.bar(mtcars, 'car name', mpg_z)
diverging.bar <- function(data, x, y) {
  ggplot(data, aes({{x}}, {{y}})) +
    geom_bar(stat = "identity", width = .5) +
    coord_flip() +
    theme_bw()
}
