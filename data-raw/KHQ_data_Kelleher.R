
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(here, readxl, usethis)


# Load data
KHQ_data_Kelleher <- data.frame(
  readxl::read_xlsx(here::here("data-raw","Example_Data_KHQ.xlsx"), sheet = "Kelleher", 
                    .name_repair = "minimal"), check.names = FALSE)

# write data to data folder ----
usethis::use_data(KHQ_data_Kelleher, overwrite = TRUE)
