//
//  AlertCustomViewController.swift
//  AlertCustomVC
//
//  Created by Jon Olivet on 8/28/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class AlertCustomViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

  @IBAction func closeTapped(_ sender: UIButton) {
    UIView.transition(with: self.view, duration: 0.5, options: [], animations: { _ in
      self.removeFromParentViewController()
      self.view.backgroundColor = UIColor.black.withAlphaComponent(0.1)
    }, completion: { (finished) in
      self.view.removeFromSuperview()
    })
  }


}
