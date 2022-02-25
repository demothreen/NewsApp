//
//  Api.swift
//  NewsApp
//
//  Created by demothreen on 25.02.2022.
//

import Foundation

class Api {
  static let shared = Api()
  let token = Bundle.main.object(forInfoDictionaryKey: "API_KEY")


}
