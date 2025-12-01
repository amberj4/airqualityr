#' @title airquality_summary
#' @description Summarize a column from the airquality dataset stored in the package
#' @param col_name A character string specifying the column name
#' @return Summary statistics of the column
#' @examples
#' airquality_summary("Ozone")
#' airquality_summary("Temp")
#' @importFrom utils read.csv
#' @export
airquality_summary <- function(col_name) {
  # load CSV from package
  aq <- read.csv(system.file("extdata", "airquality.csv", package = "airqualityr"))

  if (!col_name %in% colnames(aq)) {
    stop("Column does not exist in airquality dataset")
  }

  summary(aq[[col_name]])
}

