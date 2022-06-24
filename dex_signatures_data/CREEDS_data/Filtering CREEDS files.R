# Editing CREEDS files

setwd("~/Documents/Harvard/Summer 2022/Mount Sinai/dex-benchmark/dex_signatures_data/CREEDS_data")

# Read in files
DM <- read_csv("single_drug_perturbations-DM.csv")
p1 <- read_csv("single_drug_perturbations-p1.0.csv")
v1 <- read_csv("single_drug_perturbations-v1.0.csv")

# filtering for dex
DM %>% filter(drug_name == "Dexamethasone")
p1 %>% filter(row_number() %in% grep("dexamethasone", p1$drug_name))
v1 %>% filter(drug_name == "Dexamethasone")
