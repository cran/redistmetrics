% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compactness.R
\name{comp_edges_rem}
\alias{comp_edges_rem}
\title{Calculate Edges Removed Compactness}
\usage{
comp_edges_rem(plans, shp, adj)
}
\arguments{
\item{plans}{A \code{redist_plans} object or plans_matrix where each row indicates a district assignment and each column is a plan.}

\item{shp}{A \code{redist_map} object, tibble, or data frame with an \code{sf} geometry column.}

\item{adj}{Zero-indexed adjacency list. Not required if a \code{redist_map} is supplied for \code{shp}.}
}
\value{
A numeric vector. Can be shaped into a district-by-plan matrix.
}
\description{
Calculate Edges Removed Compactness
}
\examples{
data(nh)
data(nh_m)
# For a single plan:
comp_edges_rem(plans = nh$r_2020, shp = nh, nh$adj)

# Or many plans:
comp_edges_rem(plans = nh_m[, 3:5], shp = nh, nh$adj)

}
\references{
Matthew P. Dube and Jesse Tyler Clark. 2016.
Beyond the circle: Measuring district compactness using graph theory. In
Annual Meeting of the Northeastern Political Science Association
}
\concept{compactness}
