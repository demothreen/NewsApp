//
//  NewsAppUITests.swift
//  NewsAppUITests
//
//  Created by demothreen on 25.02.2022.
//

import XCTest

class NewsAppUITests: XCTestCase {
  let app = XCUIApplication()

  override func setUpWithError() throws {
    continueAfterFailure = false
    app.launch()

  }

  override func tearDownWithError() throws {
  }

  func testExample() throws {
  }
}
