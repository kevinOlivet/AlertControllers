//
//  ViewController.swift
//  AlertCustom
//
//  Created by Jon Olivet on 8/28/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  @IBAction func showAlertTapped(_ sender: UIButton) {
    let alert = CustomAlertView(title: "Kevin says go!", image: UIImage(named: "hello")!)
    alert.show(animated: true)
  }

}

