//
//  ViewController.swift
//  AlertCustomVC
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
    let viewController = self.storyboard?.instantiateViewController(withIdentifier: "AlertCustomViewController") as! AlertCustomViewController
    viewController.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)
    UIView.transition(with: self.view, duration: 0.5, options: .transitionCrossDissolve, animations: { _ in
      self.addChildViewController(viewController)
      self.view.addSubview(viewController.view)
    }, completion: nil)
  }

}

