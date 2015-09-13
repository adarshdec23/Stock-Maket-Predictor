from portfolioAnalysis import portfolioPredictor
from companyAnalysis import predictor
from patternAnalysis import patternAnalyser

companyNames = ['yahoo', 'google', 'microsoft', 'visa']

class chatbot:
    def __init__(self,userId):
        self.portA = portfolioPredictor()
        self.comp = predictor()
        self.patt = patternAnalyser
        self.userId = userId

    def keyWords(self, tokens):
        if 'buy' in tokens or 'invest' in tokens:
            pAna = self.portA.getPortfolioAnalysis(self.userId)
            temp = self.portA.getTopPerformers(pAna[0][0])
            return temp[0][0]+" The return has been as high as "+ str(temp[0][1]*100)+"%"

        if 'sell' in tokens:
            pAna = self.portA.getPortfolioAnalysis(self.userId)
            temp = self.portA.getTopPerformers(pAna[0][0])
            return temp[-1][0]+" The return has been as low as "+ str(temp[-1][1]*100)+"%"
        for x in tokens:
            if x in companyNames:
                if x == 'yahoo': sym='YHOO'
                if x == 'google': sym='GOOG'
                if x == 'microsoft': sym='MSFT'
                if x == 'visa': sym='V'
                return self.comp.getAnalysis(sym)+" "+self.comp.message
        return False

    def getReply(self,userInput):
        tokens = userInput.split(' ')
        return self.keyWords(tokens)

#set userid with flask
userId= 1
c = chatbot(userId)
while True:
    reply = c.getReply(raw_input("What can I do: "))
    print reply



