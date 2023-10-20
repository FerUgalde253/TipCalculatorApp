//
//  TipCalculatorTestTests.swift
//  TipCalculatorTestTests
//
//  Created by Fernando Ugalde on 18/10/23.
//

import XCTest
@testable import TipCalculatorTest

final class TipCalculatorTestTests: XCTestCase {
    func testTipCalculation_WhenATipAndAmoutAreGiven_ShouldPass(){
        //Given
        let amountBill = 1500.0
        let tipPercentage = 15.0
        let sut = Calculation()
        let expectedResult = 225.0
        //When
        let tip1 = sut.calculateTip(of: amountBill, with: tipPercentage)
        //Assert
        XCTAssertEqual(tip1, expectedResult, "This result always needs to be equal")
    }
   
    func testTipCalculationNil_WhenReciveANegativeAmout_ShouldntPass(){
        //Given
        let amountBill = -1500.0
        let tipPercentage = 15.0
        let sut = Calculation()
        
        //When
        let tip1 = sut.calculateTip(of: amountBill, with: tipPercentage)
        //Assert
        XCTAssertNil(tip1, "This Assert need to nil if the user colocate a negative value, if not return True")
    }
}
