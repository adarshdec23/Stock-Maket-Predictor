from companyAnalysis import predictor
from dbAccess import dbAccessor
import operator

class portfolioPredictor:
    def __init__(self):
        self.companyPredic = predictor()
        self.userId = None
        self.allStocks = None

    def categorizePortfolio(self,stockList):
        companyAnan = []
        companyDict = {}
        for row in stockList:
            prediction = self.companyPredic.getAnalysis(row[1]) #row[1] contains company symbol
            companyAnan.append([prediction,row[7]])
        for row in companyAnan:
            if companyDict.get(row[1]):
                if row[0] == 'BUY':
                    companyDict[row[1]] += 1
                elif row[0] == 'SELL':
                    companyDict[row[1]] -= 1
            else:
                if row[0] == 'BUY':
                    companyDict[row[1]] = 1
                elif row[0] == 'SELL':
                    companyDict[row[1]] = -1
                else :
                    companyDict[row[1]] = 0
        return companyDict

    def getPortfolioAnalysis(self,userId):
        self.userId = userId
        db = dbAccessor()
        self.allStocks = db.getInvestments(self.userId)
        t1 = self.categorizePortfolio(self.allStocks)
        return sorted(t1.items(), reverse=True, key= operator.itemgetter(1))

    def getTopPerformers(self, category = 'all', top = True):
        db = dbAccessor()
        companiesReturn = []
        companyList = db.companiesOfType()
        for row in companyList:
            companiesReturn.append( (row[1],self.companyPredic.getMonthlyReturns(row[2])) )
        return sorted(companiesReturn, reverse=top, key= lambda x: x[1])
