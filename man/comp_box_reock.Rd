% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compactness.R
\name{comp_box_reock}
\alias{comp_box_reock}
\title{Calculate Box Reock Compactness}
\usage{
comp_box_reock(plans, shp, epsg = 3857, ncores = 1)
}
\arguments{
\item{plans}{A \code{redist_plans} object or plans_matrix where each row indicates a district assignment and each column is a plan.}

\item{shp}{A \code{redist_map} object, tibble, or data frame with an \code{sf} geometry column.}

\item{epsg}{Numeric EPSG code to use to project the shapefile, if needed. Default is 3857.}

\item{ncores}{Integer number of cores to use. Default is 1.}
}
\value{
A numeric vector. Can be shaped into a district-by-plan matrix.
}
\description{
Box reock is the ratio of the area of the district by the area of the minimum
bounding box (of any rotation). Scores are bounded between 0 and 1, where 1 is
most compact.
}
\examples{
#' data(nh)
data(nh_m)
# For a single plan:
comp_box_reock(plans = nh$r_2020, shp = nh)

# Or many plans:
\donttest{
# slower, beware!
comp_box_reock(plans = nh_m[, 3:5], shp = nh)
}
}
\concept{compactness}
