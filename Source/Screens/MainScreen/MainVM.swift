//
//  MainVM.swift
//  NewsApp
//
//  Created by demothreen on 07.03.2022.
//

import Foundation

class MainVM {
  private var api: Api

  init(api: Api) {
    self.api = api
  }

  func getAppleNews() {
    api.fetchAppleNews { news, err in
      print("### news author", news?.articles[0].author)
    }
  }
}
