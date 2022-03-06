//
//  MainVM.swift
//  NewsApp
//
//  Created by demothreen on 07.03.2022.
//

import Foundation

class MainVM {

  func getAppleNews() {
    Api.shared.fetchAppleNews { news, err in
      print("### news author", news?.articles[0].author)
    }
  }
}
