//
//  WhenElse.swift
//  SwiftWhen
//
//  Created by Sterling Hackley on 8/18/19.
//  Copyright © 2019 Sterling Hackley. All rights reserved.
//

import Foundation

public func =><R>(else: WhenElse.Type, result: @escaping @autoclosure () -> R) -> () -> R {
  return result
}

public func =><R>(else: WhenElse.Type, result: @escaping () -> R) -> () -> R {
  return result
}

public enum WhenElse {}
public let `else` = WhenElse.self
