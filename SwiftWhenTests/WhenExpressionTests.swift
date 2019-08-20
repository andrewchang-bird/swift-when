//
//  WhenExpressionTests.swift
//  SwiftWhenTests
//
//  Created by Sterling Hackley on 8/19/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenExpressionTests: XCTestCase {

  func testExpression() {
    let x = 2
    
    let y = when(x) {
      1 => "one"
      2 => "two"
      3 => "three"
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testExpressionElse() {
    let x = 3
    
    let y = when(x) {
      1 => "one"
      2 => "two"
      `else` => "else"
    }
    
    XCTAssertTrue(y == "else")
  }
  
  func testExpressionRanges() {
    let x = 15
    
    let y = when(x) {
      0 ..< 10 => "one"
      10 ..< 20 => "two"
      20 ... 30 => "three"
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testExpressionRangesElse() {
    let x = 15
    
    let y = when(x) {
      0 ..< 5 => "one"
      5 ..< 10 => "two"
      `else` => "else"
    }
    
    XCTAssertTrue(y == "else")
  }
  
  func testMultipleExpression() {
    let x = 2
    
    let y = when(x) {
      1 => {
        return "one"
      }
      2 => {
        return "two"
      }
      3 => {
        return "three"
      }
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testMultipleExpressionElse() {
    let x = 3
    
    let y = when(x) {
      1 => {
        return "one"
      }
      2 => {
        return "two"
      }
      `else` => {
        return "else"
      }
    }
    
    XCTAssertTrue(y == "else")
  }
  
  func testMultipleExpressionRanges() {
    let x = 15
    
    let y = when(x) {
      0 ..< 10 => {
        return "one"
      }
      10 ..< 20 => {
        return "two"
      }
      20 ... 30 => {
        return "three"
      }
    }
    
    XCTAssertTrue(y == "two")
  }
  
  func testMultipleExpressionRangesElse() {
    let x = 15
    
    let y = when(x) {
      0 ..< 5 => {
        return "one"
      }
      5 ..< 10 => {
        return "two"
      }
      `else` => {
        return "else"
      }
    }
    
    XCTAssertTrue(y == "else")
  }
}
