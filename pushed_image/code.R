install.packages("ggplot2", update = TRUE)
install.packages("plotly", update = TRUE)
install.packages("titanic", update = TRUE)


library(dplyr)
library(tidyr)
library(ggplot2)
library(plotly)
library(ggcorrplot)
library(targets)
library(titanic)

get_data <- function() {
  return(titanic_train)
}

msv_1 <- function(df, thresh = 20, color = 'black', edgecolor = 'black', height = 3, width = 15) {
  percentage <- (colMeans(is.na(df)) * 100)
  df_missing <- data.frame(Column = names(df), Percentage = percentage)
  
  ggplot(df_missing, aes(x = reorder(Column, -Percentage), y = Percentage, fill = Percentage)) +
    geom_bar(stat = "identity", color = edgecolor) +
    geom_text(aes(label = sprintf("%.2f%%", Percentage)), vjust = 1.6, color = 'black', size = 3) +
    theme_minimal() +
    theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
    labs(title = 'Missing values percentage per column',
         x = 'Columns',
         y = 'Missing values percentage')
}

save_plot <- function(save_path, plot){
  ggsave(save_path, plot)
  save_path
  writeLines(capture.output(sessionInfo()), "./sessionInfo.txt")
}

save_plot("na.png",msv_1(get_data()))
