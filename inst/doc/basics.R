## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## -----------------------------------------------------------------------------
citation('redistmetrics')

## ---- eval = FALSE------------------------------------------------------------
#  if (!requireNamespace('remotes')) {
#    install.packages('remotes')
#  }
#  
#  remotes::install_github('alarm-redist/redistmetrics)

## ----setup--------------------------------------------------------------------
library(redistmetrics)

## -----------------------------------------------------------------------------
data(nh)

## -----------------------------------------------------------------------------
comp_reock(plans = nh$r_2020, shp = nh)

## -----------------------------------------------------------------------------
part_egap(plans = nh$r_2020, shp = nh, 
          rvote = nh$pre_20_rep_tru, dvote = nh$pre_20_dem_bid)

## -----------------------------------------------------------------------------
part_egap(plans = nh$r_2020, shp = nh, 
          rvote = nh$pre_20_rep_tru, dvote = nh$pre_20_dem_bid) %>% 
  by_plan()

