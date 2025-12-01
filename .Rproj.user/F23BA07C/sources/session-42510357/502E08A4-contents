#' @title plot_line
#' @description Create a line plot of a column over time (Month-Day)
#' @param col_name The column name to plot
#' @examples
#' plot_line("Ozone")
#' @import ggplot2
#' @export
plot_line <- function(col_name) {
  if (!col_name %in% colnames(airquality)) {
    stop("Column does not exist in airquality dataset")
  }
  airquality$Date <- as.Date(paste(1973, airquality$Month, airquality$Day, sep="-"))
  ggplot2::ggplot(airquality, ggplot2::aes_string(x = "Date", y = col_name)) +
    ggplot2::geom_line(color = "blue") +
    ggplot2::theme_minimal() +
    ggplot2::ggtitle(paste("Line Plot of", col_name, "over Time"))
}
