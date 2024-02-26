//
//  PipCalcLogic.swift
//  tradingCalc
//
//  Created by Samith on 2024-02-15.
//

import Foundation

/// formula for calculating the pip value
/// pip value = [lot size]*[trade size]
///             ------------------------
///             [current market price]
/// pip value ---> converted to account base cuurency

class PipCalcLogic {
    func baseIsUsd(lotSize:Double, tradeSize:Double, currentMaketPrice:Double) -> Double {
        return (lotSize * tradeSize)/currentMaketPrice
    }
}
