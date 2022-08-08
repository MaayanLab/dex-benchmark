# Stats Graphics for Dex Benchmark

library(readxl)
library(ggplot2)
library(tidyverse)

df <- read_excel("~/Documents/Harvard/Summer 2022/Mount Sinai/Graphics/Stats.xlsx")

by_type <- df %>% group_by(type) %>% summarize(entries = sum(entries))

ggplot(by_type, aes(x = reorder(type, entries), y = entries)) +
  geom_col(fill = "steelblue") +
  geom_text(aes(label = entries), nudge_y = 20) + 
  labs(x="", y="", title="Datasets by Sequencing Type") + 
  coord_flip() +
  theme_test() +
  theme(text = element_text(size=20))

ggsave("type.png")

by_source <- df %>% group_by(source) %>% summarize(entries = sum(entries))

ggplot(by_source, aes(x = reorder(source, entries), y = entries)) +
  geom_col(fill = "steelblue") +
  geom_text(aes(label = entries), nudge_y = 20) +
  labs(x="", y="", title="Datasets by Source") +
  coord_flip() +
  theme_test() +
  theme(text = element_text(size=20))

ggsave("source.png")
