# -----------------------------------------------------------------------------
# Customer Survey Sample
# Version: R 4.4.1
# Author: Eli Toffel
# Date: 2026-02-17
# Purpose:
#   For each premise, add what kind of 
# 
# -----------------------------------------------------------------------------

# ---- Load Required Libraries ----
library(data.table)  # For fast and efficient data manipulation (v1.16.0)
library(lubridate)   # For date/time manipulation (v1.9.3)
library(ggplot2)     # For visual summaries
library(zoo)         # For interpolation
# ---- Define Custom Colors ----
gray5 <- "#474747"; gray4 <- "#696969"; gray3 <- "#a5a5a5"
gray2 <- "#e1e1e1"; gray1 <- "#f2f2f2"
blue5 <- "#053572"; blue4 <- "#0069b6"; blue3 <- "#1295D8"
blue2 <- "#64b3e8"; blue1 <- "#c0e0f5"
orange1 <- "#e26926"

# ---- Define ODC ggplot Theme ----
theme_odc <- function() {
  theme_bw() +
    theme(
      axis.text = element_text(size = 12, color = gray5),
      axis.title = element_text(size = 14, face = "bold", color = gray5),
      plot.title = element_text(size = 18, face = "bold", color = gray5),
      legend.title = element_text(size = 14, face = "bold", color = gray5),
      legend.text = element_text(size = 12, color = gray5),
      strip.text = element_text(size = 12, face = "bold", color = "white"),
      strip.background = element_rect(fill = blue5, color = gray5),
      panel.border = element_rect(color = gray5),
      panel.grid.minor = element_blank()
    )
}



View(customers)

summarize(customers$electric_rate_c)
