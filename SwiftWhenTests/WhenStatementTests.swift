//
//  WhenStatementTests.swift
//  WhenStatementTests
//
//  Created by Sterling Hackley on 8/1/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import XCTest
import SwiftWhen

class WhenStatementTests: XCTestCase {
  
  func testStatement() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 2
    when(x) {
      1 => f1()
      2 => f2()
      3 => f3()
    }
    
    XCTAssertTrue(called2)
  }
  
  func testStatementElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 3
    when(x) {
      1 => f1()
      2 => f1()
      `else` => f3()
    }
    
    XCTAssertTrue(calledElse)
  }
  
  func testStatementRanges() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 15
    when(x) {
      0 ..< 10 => f1()
      10 ..< 20 => f2()
      20 ... 30 => f3()
    }
    
    XCTAssertTrue(called2)
  }
  
  func testStatementRangesElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 15
    when(x) {
      0 ..< 5 => f1()
      5 ..< 10 => f2()
      `else` => f3()
    }
    
    XCTAssertTrue(calledElse)
  }
  
  func testMultipleStatement() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 2
    when(x) {
      1 => {
        f1()
      }
      2 => {
        f2()
      }
      3 => {
        f3()
      }
    }
    
    XCTAssertTrue(called2)
  }
  
  func testMultipleStatementElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 3
    when(x) {
      1 => {
        f1()
      }
      2 => {
        f2()
      }
      `else` => {
        f3()
      }
    }
    
    XCTAssertTrue(calledElse)
  }
  
  func testMultipleStatementRanges() {
    var called2 = false
    
    func f1() { XCTFail() }
    func f2() { called2 = true }
    func f3() { XCTFail() }
    
    let x = 15
    when(x) {
      0 ..< 10 => {
        f1()
      }
      10 ..< 20 => {
        f2()
      }
      20 ... 30 => {
        f3()
      }
    }
    
    XCTAssertTrue(called2)
  }
  
  func testMultipleStatementRangesElse() {
    var calledElse = false
    
    func f1() { XCTFail() }
    func f2() { XCTFail() }
    func f3() { calledElse = true }
    
    let x = 15
    when(x) {
      0 ..< 5 => {
        f1()
      }
      5 ..< 10 => {
        f2()
      }
      `else` => {
        f3()
      }
    }
    
    XCTAssertTrue(calledElse)
  }
}
