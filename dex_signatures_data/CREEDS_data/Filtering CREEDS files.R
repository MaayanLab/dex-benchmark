# Editing CREEDS files

setwd("~/Documents/Harvard/Summer 2022/Mount Sinai/dex-benchmark/dex_signatures_data/CREEDS_data")

# Read in files
DM <- read_csv("single_drug_perturbations-DM.csv")
p1 <- read_csv("single_drug_perturbations-p1.0.csv")
v1 <- read_csv("single_drug_perturbations-v1.0.csv")

# filtering for dex and related drugs
DM_filtered <- 
DM %>% filter(drug_name == "Dexamethasone"
              | drug_name == "Betamethasone"
              | drug_name == "Prednisolone" 
              | drug_name == "Ketorolac")

p1_filtered <- 
p1 %>% filter(row_number() %in% c(grep("dexamethasone", p1$drug_name), 
                                  grep("prednisolone", p1$drug_name)))

v1_filtered <-
v1 %>% filter(drug_name == "Dexamethasone")

# saving files
write_csv(DM_filtered, "filtered_drug_perturbations-DM.csv")
write_csv(p1_filtered, "filtered_drug_perturbations-p1.0.csv")
write_csv(v1_filtered, "filtered_drug_perturbations-v1.0.csv")