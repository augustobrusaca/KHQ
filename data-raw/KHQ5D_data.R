
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(here, readxl, usethis)


# Load data
KHQ5D_data <- data.frame(
  readxl::read_xlsx(here::here("data-raw","Example_Data_KHQ.xlsx"), sheet = "KHQ5D", 
                    .name_repair = "minimal"), check.names = FALSE)

# write data to data folder ----
usethis::use_data(KHQ5D_data, overwrite = TRUE)
