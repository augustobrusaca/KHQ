
# load required packages ----
if (!require("pacman")) install.packages("pacman") 
pacman::p_load(readxl)


# Load data
KHQ5D_data <- readxl::read_xlsx(path = "Example_Data_KHQ.xlsx", sheet = "KHQ5D", .name_repair = "minimal") %>% 
  data.frame(check.names = FALSE)

# write data to data folder ----
usethis::use_data(KHQ5D_data, overwrite = TRUE)
