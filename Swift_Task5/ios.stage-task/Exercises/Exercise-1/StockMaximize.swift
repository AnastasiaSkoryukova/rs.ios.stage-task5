import Foundation

class StockMaximize {
    
    
    func countProfit(prices: [Int]) -> Int {
        var maxProfit = 0
        var currentProfit = 0
        
        
        
        var start = 0
        var startPlusOne = start + 1
        let numberOfElements = prices.count
        guard let firstElement = prices.first else { return 0 }
        guard let lastElement = prices.last else { return 0 }
        
        if numberOfElements == 0 || numberOfElements == 1 {
            return 0
        } else if numberOfElements == 2 {
            if lastElement > firstElement {
                maxProfit = lastElement - firstElement
                
            }
        }
        
        
        for i in start..<numberOfElements - 1 {
            for j in startPlusOne...numberOfElements - 1{
            currentProfit = lastElement - prices[i]
            maxProfit = max(maxProfit, currentProfit)
            currentProfit = lastElement - prices[j]
            maxProfit = max(maxProfit, currentProfit)
            currentProfit = prices[j] - prices[i]
            maxProfit = max(maxProfit, currentProfit)
                
                if j + 1 <= numberOfElements - 1 {
            currentProfit = lastElement - prices[i] + lastElement - prices[j] + lastElement - prices[j+1]
                }
                
            maxProfit = max(maxProfit, currentProfit)
                
                if j + 2 <= numberOfElements - 1 && i + 2 <= numberOfElements - 1 {
            currentProfit = (prices[j] - prices[i]) + (prices[j+2] - prices[i+2])
                }
                maxProfit = max(maxProfit, currentProfit)
                
                
        }
        
        }
            
//                for i in start..<numberOfElements - 2 {
//
//                    for j in startPlusOne...numberOfElements - 1{
//                        if prices[j] > prices[i] {
//
//
//                            let newArraySlice = prices[start...i]
//                            let newArray1 = Array(newArraySlice)
//                            var newArray2 = [Int]()
//
//                            if j < numberOfElements - 4 {
//                            let newArraySlice2 = prices[j + 2...numberOfElements - 1]
//                            newArray2 = Array(newArraySlice2)
//                            }
//                            currentProfit = prices[j] - prices[i] + countProfit(prices: newArray1) + countProfit(prices: newArray2)
//                            maxProfit = max(maxProfit, currentProfit)
//
//                        }
//                    }
//
//            }
        
        return maxProfit
}

}
