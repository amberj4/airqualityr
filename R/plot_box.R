#' @title plot_box
#' @description Create a boxplot of a column from the airquality dataset stored in the package
#' @param col_name A character string specifying the column to plot
#' @examples
#' plot_box("Ozone")
#' @import ggplot2
#' @export
plot_box <- function(col_name) {
  aq <- read.csv(system.file("extdata", "airquality.csv", package = "airqualityr"))

  if (!col_name %in% colnames(aq)) {
    stop("Column does not exist in airquality dataset")
  }

  ggplot2::ggplot(aq, ggplot2::aes_string(y = col_name)) +
    ggplot2::geom_boxplot(fill = "skyblue") +
    ggplot2::theme_minimal() +
    ggplot2::ylab(col_name) +
    ggplot2::ggtitle(paste("Boxplot of", col_name))
}


