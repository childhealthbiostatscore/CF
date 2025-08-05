library(tidyverse)
library(lubridate)
library(hms)
library(readxl)
files <- list.files("/Users/tim/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Christine Chan/EnVision CF/Data_Raw/FilesReport_CGM_2025-01-30_1306/FilesReport_CGM_2025-01-30_1306/documents", full.names = T)
lapply(files, function(f) {
  # ID
  id <- basename(f)
  ext <- tools::file_ext(f)
  id <- sub("\\.csv|\\.txt|.xlsx", "", id)
  # Read in
  if (ext == "csv") {
    cgm <- read.csv(f, na.strings = "")
  } else if (ext == "txt") {
    cgm <- read.delim(f, na.strings = "", skip = 1)
  } else if (ext == "xlsx") {
    cgm <- read_excel(f)
  }
  # Clean CGM
  if (ncol(cgm) == 19) {
    cgm <- cgm[-c(1:2), c(3, 5)]
    colnames(cgm) <- c("timestamp", "Glucose")
    cgm$timestamp <- parsedate::parse_date(cgm$timestamp)
  } else if (ncol(cgm) == 4 & ext == "xlsx") {
    cgm <- cgm[-c(1:2), c(2, 4)]
    cgm$...2 <- openxlsx::convertToDateTime(cgm$...2)
    colnames(cgm) <- c("timestamp", "Glucose")
  } else if (ncol(cgm) == 4 & ext == "txt") {
    cgm <- cgm[, c(2, 4)]
    colnames(cgm) <- c("timestamp", "Glucose")
    cgm$timestamp <- parsedate::parse_date(cgm$timestamp)
  }
  cgm$Date <- date(cgm$timestamp)
  cgm$Time <- as_hms(cgm$timestamp)
  cgm$Glucose <- as.numeric(cgm$Glucose)
  cgm <- cgm %>%
    select(Date, Time, Glucose) %>%
    drop_na()
  # Plot
  p <- ggplot(cgm, aes(x = Time, y = Glucose, group = factor(Date), color = factor(Date))) +
    ylim(40, 400) +
    annotate("rect",
      xmin = -Inf, xmax = Inf, fill = "lightblue",
      ymin = 70, ymax = 180, alpha = .5
    ) +
    geom_line() +
    ggtitle(id) +
    theme_bw() +
    scale_color_discrete("Date")
  # Save
  ggsave(paste0("/Users/tim/Library/CloudStorage/OneDrive-TheUniversityofColoradoDenver/Vigers/CF/Christine Chan/EnVision CF/Reports/AGPs/", id, ".png"),
    plot = p, width = 9, height = 6, units = "in", device = "png"
  )
})
