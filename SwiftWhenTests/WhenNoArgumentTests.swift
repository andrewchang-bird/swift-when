//
//  WhenNoArgumentTests.swift
//  SwiftWhenTests
//
//  Created by Sterling Hackley on 8/19/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenNoArgumentTests: XCTestCase {
  func testNoArgumentStatement() {
    var called1 = false
    
    func f1() { called1 = true }
    func f5() { XCTFail() }
    
    let x = 1
    when {
      x == 1 => f1()
      x == 5 => f5()
    }
    
    XCTAssertTrue(called1)
  }
  
  func testNoArgumentStatementElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 3
    when {
      x == 1 => f1()
      x == 2 => f2()
      `else` => f3()
    }
    
    XCTAssertTrue(calledElse)
  }
  
  func testNoArgumentExpression() {
    let x = 1
    
    let y = when {
      x == 1 => "one"
      x == 5 => "five"
    }
    
    XCTAssertTrue(y == "one")
  }
  
  func testNoArgumentExpressionElse() {
    let x = 3
    
    let y = when {
      x == 1 => "one"
      x == 2 => "two"
      `else` => "else"
    }
    
    XCTAssertTrue(y == "else")
  }
  
  func testNoArgumentMultipleStatement() {
    var called1 = false
    
    func f1() { called1 = true }
    func f5() { XCTFail() }
    
    let x = 1
    when {
      x == 1 => {
        print("x is one")
        f1()
      }
      x == 5 =>  {
        print("x is five")
        f5()
      }
    }
    
    XCTAssertTrue(called1)
  }
  
  func testNoArgumentMultipleStatementElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 3
    when {
      x == 1 => {
        f1()
      }
      x == 2 => {
        f2()
      }
      `else` => {
        f3()
      }
    }
    
    XCTAssertTrue(calledElse)
  }
  
  func testNoArgumentMultipleExpression() {
    let x = 1
    
    let y = when {
      x == 1 => {
        return "one"
      }
      x == 5 => {
        return "five"
      }
    }
    
    XCTAssertTrue(y == "one")
  }
  
  func testNoArgumentMultipleExpressionElse() {
    let x = 3
    
    let y = when {
      x == 1 => {
        return "one"
      }
      x == 2 => {
        return "two"
      }
      `else` => {
        return "else"
      }
    }
    
    XCTAssertTrue(y == "else")
  }
}

