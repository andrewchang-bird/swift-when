//
//  WhenBuilder+Cases.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public extension WhenBuilder {
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ case5: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, case5, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ case5: WhenNoArguementCase<R>,
    _ case6: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, case5, case6, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ case5: WhenNoArguementCase<R>,
    _ case6: WhenNoArguementCase<R>,
    _ case7: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, case5, case6, case7, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ case5: WhenNoArguementCase<R>,
    _ case6: WhenNoArguementCase<R>,
    _ case7: WhenNoArguementCase<R>,
    _ case8: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, case5, case6, case7, case8, WhenNoArguementCase(result: defaultResult)]
  }
  
  static func buildBlock<R>(
    _ case1: WhenNoArguementCase<R>,
    _ case2: WhenNoArguementCase<R>,
    _ case3: WhenNoArguementCase<R>,
    _ case4: WhenNoArguementCase<R>,
    _ case5: WhenNoArguementCase<R>,
    _ case6: WhenNoArguementCase<R>,
    _ case7: WhenNoArguementCase<R>,
    _ case8: WhenNoArguementCase<R>,
    _ case9: WhenNoArguementCase<R>,
    _ defaultResult: @escaping () -> R
  ) -> [WhenNoArguementCase<R>] {
    return [case1, case2, case3, case4, case5, case6, case7, case8, case9, WhenNoArguementCase(result: defaultResult)]
  }
}


