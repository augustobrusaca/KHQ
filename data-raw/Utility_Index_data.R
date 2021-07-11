
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(here, readxl, usethis)


# Load data
Utility_Index_data <- data.frame(
  readxl::read_xlsx(here::here("data-raw","Score_Utility_Index.xlsx"), sheet = "KHQ5D", 
                    .name_repair = "minimal"), check.names = FALSE)

# write data to data folder ----
usethis::use_data(Utility_Index_data, overwrite = TRUE)
usethis::use_data(Utility_Index_data, internal = TRUE)
