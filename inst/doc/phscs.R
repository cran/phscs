## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, echo=FALSE--------------------------------------------------------
library(phscs)

## ----psgc-example, eval=FALSE-------------------------------------------------
# # Retrieve PSGC data
# psgc_data <- get_psgc()
# 
# psgc_data |>
#   head(10) |>
#   gt::gt() |>
#   gt::tab_options(table.align = "left")

## ----psgc-levels--------------------------------------------------------------
psgc_provinces <- get_psgc(level = "provinces")
psgc_regions <- get_psgc(level = "regions")

psgc_regions |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----psgc-filter--------------------------------------------------------------
# Retrieve PSGC data for areas in region 10
psgc_region_10 <- get_psgc(grepl("^10", area_code))

psgc_region_10 |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----psgc-cols----------------------------------------------------------------
# Retrieve full PSGC data
psgc_full_data <- get_psgc(minimal = FALSE)

# Retrieve PSGC data with additional columns
psgc_data_with_cols <- get_psgc(
  cols = c(
    "area_code", 
    "area_name", 
    "region_code", 
    "province_code"
  )
)

psgc_data_with_cols |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----psic-example-------------------------------------------------------------
# Retrieve PSIC data
psic_data <- get_psic()

# Retrieve PSIC data for specific levels
psic_sections <- get_psic(level = "sections")

psic_sections |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----psoc-example-------------------------------------------------------------
# Retrieve PSOC data
psoc_data <- get_psoc()

# Retrieve PSOC data for specific levels
psoc_major <- get_psoc(level = "major")

psoc_major |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----pscc-example-------------------------------------------------------------
# Retrieve PSCED data
psced_data <- get_psced()
psced_data |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----psced-levels-------------------------------------------------------------
# Retrieve PSCED data for specific levels
psced_broadfield <- get_psced(level = "broadfield")

psced_broadfield |> 
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")

## ----pcoicop-example----------------------------------------------------------
# Retrieve PCOICOP data
pcoicop_data <- get_pcoicop()
pcoicop_data |>
  head(10) |> 
  gt::gt() |> 
  gt::tab_options(table.align = "left")


