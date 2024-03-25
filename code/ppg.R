library(here)
library(knitr)
here::i_am("code/ppg.R")
ppg <- read.csv("C:/Users/pengfei lou/Desktop/final_project_4/data/bangle.csv")

library(ggplot2)

ppg[,1]<-ppg[,1]-ppg[1,1]

ppg$timestamp_ms<-ppg$timestamp_ms/1000

scatterplot<-ggplot(ppg, aes(x = timestamp_ms, y = value))+geom_line()+geom_point(color = "red", size = 0.5) +
  labs(x = "Timestamp (ms)", y = "PPG Signal Value", title = "Raw PPG Signal with Detected Peaks") +
  theme_minimal()

ggsave(
  plot=scatterplot,
  device='png',
  file.path(here::here("output/scatterplot.png"))
)

