//
//  MainVC.swift
//  NewsApp
//
//  Created by demothreen on 25.02.2022.
//

import UIKit

class MainVC: UIViewController {
  private var mainVM: MainVM = MainVM()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    mainVM.getAppleNews()
  }

}
