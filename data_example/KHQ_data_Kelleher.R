
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(readxl)


# Load data
KHQ_data_Kelleher <- readxl::read_xlsx(path = "Example_Data_KHQ.xlsx", sheet = "Kelleher", .name_repair = "minimal") %>% 
  data.frame(check.names = FALSE)

# write data to data folder ----
usethis::use_data(KHQ_data_Kelleher, overwrite = TRUE)
