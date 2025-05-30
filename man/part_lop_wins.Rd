% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/partisan.R
\name{part_lop_wins}
\alias{part_lop_wins}
\title{Calculate Lopsided Wins}
\usage{
part_lop_wins(plans, shp, dvote, rvote)
}
\arguments{
\item{plans}{A \code{redist_plans} object or plans_matrix where each row indicates a district assignment and each column is a plan.}

\item{shp}{A \code{redist_map} object, tibble, or data frame containing other columns.}

\item{dvote}{Unqouted name of column in \code{shp} with total population.}

\item{rvote}{Unqouted name of column in \code{shp} with group population.}
}
\value{
A numeric vector. Can be shaped into a district-by-plan matrix.
}
\description{
Calculate Lopsided Wins
}
\examples{
data(nh)
data(nh_m)
# For a single plan:
part_lop_wins(plans = nh$r_2020, shp = nh, rvote = nrv, dvote = ndv)

# Or many plans:
part_lop_wins(plans = nh_m[, 3:5], shp = nh, rvote = nrv, dvote = ndv)

}
\references{
Samuel S.-H. Wang. 2016. "Three Tests for Practical Evaluation of Partisan Gerrymandering."
Stanford Law Review, 68, Pp. 1263 - 1321.
}
\concept{partisan}
