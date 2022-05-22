//
//  MainAssembly.swift
//  NewsApp
//
//  Created by demothreen on 22.05.2022.
//

import Swinject
import SwinjectAutoregistration

class MainAssembly: Assembly {
  func assemble(container: Container) {
    container.autoregister(MainVC.self, initializer: MainVC.init)
    container.autoregister(MainVM.self, initializer: MainVM.init)
  }
}
