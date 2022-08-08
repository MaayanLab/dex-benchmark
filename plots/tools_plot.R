# Making tools per year graph

library(readxl)
library(ggplot2)
library(tidyverse)

setwd("~/Documents/Harvard/Summer 2022/Mount Sinai/Graphics")
tools <- read_excel("Tools per year.xlsx")

ggplot(tools, aes(year, tools)) +
  geom_col(fill="maroon") +
  labs(x="", y="Published tools per year (BioToolSTory)") +
  theme_bw() +
  theme(text=element_text(size=20))

ggsave("tools.png")
