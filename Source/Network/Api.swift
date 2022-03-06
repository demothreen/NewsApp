//
//  Api.swift
//  NewsApp
//
//  Created by demothreen on 25.02.2022.
//

import UIKit
import Alamofire

final class Api {
  static let shared = Api()
  private let token: String = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as! String
  private let baseUrl: String = "https://newsapi.org/v2/everything"

  private func makeRequest<T: Codable>(type: T.Type, method: HTTPMethod, params: [String: Any], onComplection: @escaping (T?, NSError?) -> Void) {
    var parameters: [String: Any] = ["apiKey": token]
    if !params.isEmpty {
      params.forEach { parameters[$0] = $1 }
    }
    let request = AF.request("\(baseUrl)?q=apple&apiKey=\(token)")
    request.responseDecodable(of: T.self) { response in
      onComplection(response.value, nil)
    }

  }

  func fetchAppleNews(onCompletion: @escaping (News?, NSError?) -> Void) {
    let params: [String: Any] = ["q": "apple"]
    makeRequest(type: News.self, method: .get, params: params) { data, err in
      onCompletion(data, err)
    }
  }

}
