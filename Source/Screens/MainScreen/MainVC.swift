//
//  MainVC.swift
//  NewsApp
//
//  Created by demothreen on 25.02.2022.
//

import UIKit

class MainVC: UIViewController {
  private var vm: MainVM

  init(vm: MainVM) {
    self.vm = vm
    super.init(nibName: nil, bundle: nil)
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    vm.getAppleNews()
  }
}
