% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/competitiveness.R
\name{compet_talisman}
\alias{compet_talisman}
\title{Compute Talismanic Redistricting Competitiveness Metric}
\usage{
compet_talisman(plans, shp, rvote, dvote, alpha = 1, beta = 1)
}
\arguments{
\item{plans}{A \code{redist_plans} object or plans_matrix where each row indicates a district assignment and each column is a plan.}

\item{shp}{A \code{redist_map} object, tibble, or data frame containing other columns.}

\item{rvote}{Unqouted name of column in \code{shp} with group population.}

\item{dvote}{Unqouted name of column in \code{shp} with total population.}

\item{alpha}{Numeric scaling value}

\item{beta}{Numeric scaling value}
}
\value{
A numeric vector. Can be shaped into a district-by-plan matrix.
}
\description{
Compute Talismanic Redistricting Competitiveness Metric
}
\examples{
data(nh)
data(nh_m)
# For a single plan:
compet_talisman(plans = nh$r_2020, shp = nh, rvote = nrv, dvote = ndv)

# Or many plans:
compet_talisman(plans = nh_m[, 3:5], shp = nh, rvote = nrv, dvote = ndv)

}
\references{
Wendy K. Tam Cho and Yan Y. Liu
Toward a Talismanic Redistricting Tool.
Election Law Journal. 15, 4. Pp. 351-366.
}
\concept{competitiveness}
