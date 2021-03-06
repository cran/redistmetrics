% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compactness.R
\name{comp_reock}
\alias{comp_reock}
\title{Calculate Reock Compactness}
\usage{
comp_reock(plans, shp, epsg = 3857, ncores = 1)
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
Calculate Reock Compactness
}
\examples{
data(nh)
data(nh_m)
# For a single plan:
comp_reock(plans = nh$r_2020, shp = nh)

# Or many plans:
comp_reock(plans = nh_m[, 3:5], shp = nh)

}
\references{
Reock, E. 1961. A Note: Measuring Compactness as a Requirement of Legislative
Apportionment. Midwest Journal of Political Science, 5(1), 70-74.
}
\concept{compactness}
