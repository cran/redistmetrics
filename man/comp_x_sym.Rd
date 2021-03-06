% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compactness.R
\name{comp_x_sym}
\alias{comp_x_sym}
\title{Calculate X Symmetry Compactness}
\usage{
comp_x_sym(plans, shp, epsg = 3857, ncores = 1)
}
\arguments{
\item{plans}{redist_plans object or plans_matrix where each row indicates a district assignment and each column is a plan}

\item{shp}{redist_map object or tibble with sf geometry column}

\item{epsg}{numeric EPSG code to planarize to. Default is 3857.}

\item{ncores}{numeric. Number of cores to use. Default is 1.}
}
\value{
numeric vector
}
\description{
X symmetry is the overlapping area of a shape and its projection over the
x-axis.
}
\examples{
#' data(nh)
data(nh_m)
# For a single plan:
comp_x_sym(plans = nh$r_2020, shp = nh)

# Or many plans:
\donttest{
# slower, beware!
comp_x_sym(plans = nh_m[, 3:5], shp = nh)
}

}
\references{
Aaron Kaufman, Gary King, and Mayya Komisarchik. 2021.
How to Measure Legislative District Compactness If You Only Know it When You See It.
American Journal of Political Science. 65, 3. Pp. 533-550.
}
\concept{compactness}
