## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(redistmetrics)
data(nh)

## -----------------------------------------------------------------------------
part_dvs(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_dseats(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_dvs(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_resp(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_resp(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv, bandwidth = 0.1)

## -----------------------------------------------------------------------------
part_decl(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_decl_simple(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_mean_median(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_lop_wins(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_egap(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_egap_ep(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_tau_gap(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
part_sscd(plans = nh$r_2020, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
data(nh_m)
part_rmd(plans = nh_m, shp = nh, dvote = ndv, rvote = nrv)

## -----------------------------------------------------------------------------
library(ggplot2)
dplyr::tibble(rmd = part_rmd(plans = nh_m, shp = nh, dvote = ndv, rvote = nrv),
              plan = rep(colnames(nh_m), each = 2)) %>% 
  ggplot() +
  geom_histogram(aes(x = rmd, fill = plan), bins = 50) + 
  theme_bw()

