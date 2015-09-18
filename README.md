# Stock-Maket-Predictor
Helps user make stock related decisions based on historical trends.

#The current usage is limited to a few companies. Alter the file companyAnalysis.predictor.getData() to read live
data from Yahoo! Finance.

Usage
1) To get the analysis of any company, use companyAnalysis.predictor class with getData taking the symbol of the 
   company you wish to analyse.
2) Use portfolioAnalysis.portfolioAnalyser to analyse a user's portfolio to make intelligent suggetions. This uses
   the predictor class from company analysis.
3) dbAccessor is the model (a database abstraction as the name suggests).
#Sample db has been provided. Just import it using MySQL.

Pattern analysis is used to provide a user with custom offers based on usage history and pattern. It currently does
the following
1) Location based predictions.
2) Frequency based predictions.
3) Amount based (money transferred).
