#' Pipe operator
#'
#' See \code{magrittr} for details.
#'
#' @name %>%
#' @rdname pipe
#' @keywords internal
#' @export
#' @importFrom magrittr %>%
#' @usage lhs \%>\% rhs
NULL

#' Save a ggplot with sensible defaults
#'
#' See \code{ggplot2} for details.
#'
#' @name ggsave
#' @rdname ggsave
#' @keywords internal
#' @export
#' @importFrom ggplot2 ggsave
#' @usage ggsave(filename, plot = last_plot(), device = NULL, path = NULL, scale
#'   = 1, width = NA, height = NA, units = c("in", "cm", "mm"), dpi = 300,
#'   limitsize = TRUE, ...)
NULL

# Compute differences between two sets of SSM parameters -----------------------
param_diff <- function(p1, p2) {
  assert_that(is.numeric(p1), is.numeric(p2))
  pd <- p1 - p2
  pd[[5]] <- angle_dist(as_radian(p1[[5]]), as_radian(p2[[5]]))
  pd
}

# Calculate angular distance ---------------------------------------------------
angle_dist <- function(x, y) {
  ((x - y + pi) %% (2 * pi)) - pi
}

# Convert degrees to ggplot's radian format ------------------------------------
ggrad <- function(v) {
  v <- as.numeric(v)
  (v - 90) * (-pi / 180)
}

# Convert percent number to a formatted string ---------------------------------
str_percent <- function(x, digits = 2) {
  paste0(floor(x * 10^(digits + 2)) / (10^digits), "%")
}

# Determine good max amplitude value for circle plot ---------------------------
pretty_max <- function(v) {
  amax <- max(v, na.rm = TRUE)
  options <- c(
    0.05, 0.10, 0.15, 0.20, 0.25,
    0.50, 0.75, 1.00, 1.25, 1.50,
    2.00, 2.50, 3.00, 4.00, 5.00
  )
  match <- options > amax
  if (sum(match) >= 1) {
    out <- options[match][[1]]
  } else {
    out <- ceiling(amax * 1.50)
  }
  out
}
