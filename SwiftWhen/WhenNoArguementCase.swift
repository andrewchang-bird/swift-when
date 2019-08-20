//
//  WhenNoArguementCase.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/12/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public func =><R>(expression: @escaping @autoclosure () -> Bool, result: @escaping @autoclosure () -> R) -> WhenNoArguementCase<R> {
  return WhenNoArguementCase(expression: expression, result: result)
}

public func =><R>(expression: @escaping @autoclosure () -> Bool, result: @escaping () -> R) -> WhenNoArguementCase<R> {
  return WhenNoArguementCase(expression: expression, result: result)
}

public struct WhenNoArguementCase<R> {
  let matches: () -> Bool
  let result: () -> R

  init(expression: @escaping () -> Bool, result: @escaping () -> R) {
    self.matches = expression
    self.result = result
  }
  
  init(result: @escaping () -> R) {
    self.matches = { true }
    self.result = result
  }
}
