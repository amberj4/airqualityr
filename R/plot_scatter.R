#' @title plot_scatter
#' @description Create a scatter plot of two columns from airquality
#' @param x_col The x-axis column name
#' @param y_col The y-axis column name
#' @examples
#' plot_scatter("Ozone", "Temp")
#' @import ggplot2
#' @export
plot_scatter <- function(x_col, y_col) {
  if (!x_col %in% colnames(airquality) | !y_col %in% colnames(airquality)) {
    stop("One or both columns do not exist in airquality dataset")
  }
  ggplot2::ggplot(airquality, ggplot2::aes_string(x = x_col, y = y_col)) +
    ggplot2::geom_point(color = "tomato") +
    ggplot2::theme_minimal() +
    ggplot2::ggtitle(paste("Scatter Plot of", x_col, "vs", y_col))
}

