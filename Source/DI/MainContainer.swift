//
//  MainContainer.swift
//  NewsApp
//
//  Created by demothreen on 22.05.2022.
//

import Foundation
import Swinject
import SwinjectAutoregistration

class MainContainer {
  private static let shared = MainContainer()
  private var assembler: Assembler

  private init() {
    assembler = Assembler(
      [
        AppAssembly(),
        MainAssembly()
      ]
    )
  }

  func resolve<T>(_ type: T.Type) -> T {
    let synchronizedResolver = (assembler.resolver as! Container).synchronize()
    return synchronizedResolver ~> (type)
  }
}

extension MainContainer {
  static func resolve<T>(_ type: T.Type) -> T {
    return MainContainer.shared.resolve(type)
  }
}
