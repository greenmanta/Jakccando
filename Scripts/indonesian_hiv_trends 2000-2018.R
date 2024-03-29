install.packages("europepmc")
install.packages("cowplot")
install.packages("tidyverse")

library(europepmc)
library(cowplot)
library(tidyverse)

ot_trend <- europepmc::epmc_hits_trend(query = "indonesian HIV", 
                                       period = 2000:2018)
# Standard plot

hiv <- ot_trend %>% 
  ggplot(aes(year, query_hits / all_hits)) + 
  geom_point() + 
  geom_line()
hiv
# Nicer plot

hiv_barplot <- ot_trend %>%
  ggplot(aes(x = factor(year), y = (query_hits / all_hits))) +
  geom_col(fill = "#56B4E9", width = 0.6, alpha = 0.9) +
  scale_y_continuous(expand = c(0, 0)) +
  theme_minimal_hgrid(12) +
  labs(x = "Year", y = "Proportion of all published articles") +
  ggtitle("Interest in Indonesian-HIV research over the past 2000-2018")
hiv_barplot

