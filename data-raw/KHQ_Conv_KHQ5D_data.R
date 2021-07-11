
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(here, readxl, usethis, dplyr, magrittr)


# Load data
KHQ_Conv_KHQ5D_data <- data.frame(
  readxl::read_xlsx(here::here("data-raw","Example_Data_KHQ.xlsx"), sheet = "Kelleher", 
                    .name_repair = "minimal"), check.names = FALSE) %>%
  dplyr::select("3a", "3b", "4a", "4b", "4d", "5c", "6a", "6b", "7a")

# write data to data folder ----
usethis::use_data(KHQ_Conv_KHQ5D_data, overwrite = TRUE)
