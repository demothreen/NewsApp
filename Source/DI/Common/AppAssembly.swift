//
//  AppAssembly.swift
//  NewsApp
//
//  Created by demothreen on 22.05.2022.
//

import Swinject
import SwinjectAutoregistration

class AppAssembly: Assembly {
  func assemble(container: Container) {
    container.autoregister(Api.self, initializer: Api.init)
  }
}
