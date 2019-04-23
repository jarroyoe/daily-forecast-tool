library(readxl)
library(forecast)
library(dplyr)
options(warn=-1)

#read data from daily-fed Excel file
sales_data <- read_xlsx("C:/ForecastTool/sales-data.xlsx")
sales_data <- tail(sales_data %>% select(Date, Amount), 758)

#generate a forecast using auto arima
fit <- auto.arima(sales_data$Amount)
forecasted <- predict(fit, 2)
prediction <- forecasted$pred
upper80 <- prediction + 1.28 * forecasted$se
lower80 <- prediction - 1.28 * forecasted$se

#print the results
print(
  cat(
    "Here are the results for today:\n",
    "Date\t\t Forecasted \t Low 80\t\t High 80\n",
    as.character(Sys.Date()),
    "\t",
    prediction[1],
    "\t",
    lower80[1],
    "\t",
    upper80[1],
    "\n",
    as.character(Sys.Date() + 1),
    "\t",
    prediction[2],
    "\t",
    lower80[2],
    "\t",
    upper80[2],
    "\n",
    sep = " "
  )
)