# daily-forecast-tool
Forecasting tool developed to setting daily funding to stores in a specific market.

This project resulted from a need of the accounting team in a company I previously worked to improve their forecasting methods. In order to minimize the intervention of other departments in this daily procedure, we opted for using a self-updating tool for performing Time Series Analysis, such as the Auto Arima tool implemented in the forecast R package. 

The tool feeds from the previous two years of data, which during early analyses showed enough information to present seasonality and to avoid overfitting. In order to promote the ease of use of the tool, the tool consists of only an Excel file, the R script, and a batch file which presents the user interface.

This tool went through a testing period of two months, after which the information provided by the tool presented on average an increase in accuracy of 21% compared to the previous methods of forecasting used by the team.
