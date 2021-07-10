
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(readxl)


# Load data
Utility_Index_data <- readxl::read_xlsx(path = "Score_Utility_Index.xlsx", sheet = "KHQ5D", .name_repair = "minimal") %>% 
  data.frame(check.names = FALSE)


# write data to data folder ----
usethis::use_data(Utility_Index_data, overwrite = TRUE)
