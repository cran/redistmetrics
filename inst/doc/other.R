## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(redistmetrics)
data(nh)

## -----------------------------------------------------------------------------
compet_talisman(plans = nh$r_2020, shp = nh, rvote = nrv, dvote = ndv)

## -----------------------------------------------------------------------------
seg_dissim(plans = nh$r_2020, shp = nh, group_pop = pop_black, total_pop = pop)

## -----------------------------------------------------------------------------
fake_inc <- rep(FALSE, nrow(nh))
fake_inc[c(1, 2)] <- TRUE

## -----------------------------------------------------------------------------
inc_pairs(plans = nh$r_2020, shp = nh, inc = fake_inc)

