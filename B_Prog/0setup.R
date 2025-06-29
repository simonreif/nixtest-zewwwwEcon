# Load packages
library(tidyverse)
library(readr) 
library(sf) 
library(estimatr) # Estimating things
library(gt)
library(gtsummary)
library(modelsummary) 
library(ggpubr) 
library(broom) # Format output

# ggplot2 Settings
theme_set(theme_classic())

# Define default colors
options(ggplot2.discrete.colour = c("#900000FF",
                                    "#A7B3CDFF",
                                    "#CCD7ADFF",
                                    "#676155FF",
                                    "#D4A76AFF"))

options(ggplot2.discrete.fill = c("#900000FF",
                                  "#A7B3CDFF",
                                  "#CCD7ADFF",
                                  "#676155FF",
                                  "#D4A76AFF"))


ggplot2::update_geom_defaults("point", aes(color = "#900000FF"))
ggplot2::update_geom_defaults("errorbar", aes(color = "#A7B3CDFF"))

# Define custom scale functions
scale_fill_gradient_custom <- function(...) {
  scale_fill_gradient(low = "#F9E0E0", high = "#2B1D1D", ...)
}

scale_colour_gradient_custom <- function(...) {
  scale_colour_gradient(low = "#F9E0E0", high = "#2B1D1D", ...)
}
