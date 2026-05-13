## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE--------------------------------------------------------
library(phscs)

## ----common-cols--------------------------------------------------------------
get_psic(level = "sections", cols = "description") |>
  head(5) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psgc-regions-------------------------------------------------------------
psgc_regions <- get_psgc(geographic_level = "region")

psgc_regions |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psgc-shorten-------------------------------------------------------------
psgc_regions |>
  shorten_region_name(which = "label") |>
  head(5) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psgc-filter, eval=FALSE--------------------------------------------------
# # All areas whose PSGC code starts with "10" (Region X)
# psgc_all <- get_psgc()
# psgc_region_10 <- psgc_all[grepl("^10", psgc_all$psgc_code), ]

## ----psic-default-------------------------------------------------------------
get_psic() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psic-sections------------------------------------------------------------
get_psic(level = "sections") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psoc-default-------------------------------------------------------------
get_psoc() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psoc-major---------------------------------------------------------------
get_psoc(level = "major") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psced-default------------------------------------------------------------
get_psced() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psced-levels-------------------------------------------------------------
get_psced(level = "levels") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----pcoicop-default----------------------------------------------------------
get_pcoicop() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----pcoicop-divisions--------------------------------------------------------
get_pcoicop(level = "divisions") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----pcoicop-2009-------------------------------------------------------------
get_pcoicop(version = "2009", level = "divisions") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----pcpc-default-------------------------------------------------------------
get_pcpc() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----pcpc-sections------------------------------------------------------------
get_pcpc(level = "sections") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psccs-default------------------------------------------------------------
get_psccs() |>
  head(10) |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

## ----psccs-section------------------------------------------------------------
get_psccs(level = "section") |>
  gt::gt() |>
  gt::tab_options(table.align = "left")

