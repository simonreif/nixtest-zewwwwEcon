# install.packages("rix", repos = c(
#  "https://ropensci.r-universe.dev",
#   "https://cloud.r-project.org"
# ))
library(rix)

path_default_nix <- getwd()

rix(
  r_ver = "4.5.0",
  r_pkgs = c("rix",
"tidyverse",
"broom", 
"ggpubr", 
"modelsummary",
"gtsummary", 
"gt", 
"estimatr", 
"sf",
"quarto",
"showtext"
),
  system_pkgs = c("quarto",
  "git", "gnumake"),
  tex_pkgs = c(
"setspace", 
"lipsum", 
"txfonts",
"csquotes",
"geometry",
"float",
"multirow",
"colortbl",
"booktabs",
"threeparttable",
"caption",
"xcolor",
"fontspec",
"amsfonts",
"titling",
"biblatex",
"biblatex-apa",
"hyperref",
"placeins",
"pdflscape"),
  git_pkgs = NULL,
  ide = "rstudio",
  project_path = path_default_nix,
  overwrite = TRUE,
  print = FALSE
)