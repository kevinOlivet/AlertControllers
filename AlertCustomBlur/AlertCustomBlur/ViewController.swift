//
//  ViewController.swift
//  AlertCustomBlur
//
//  Created by Jon Olivet on 10/23/17.
//  Copyright © 2017 Jon Olivet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var effect: UIVisualEffect!
  
  @IBOutlet var addItemView: UIView!
  @IBOutlet weak var visualEffectView: UIVisualEffectView!
  
  // MARK: - Life cycle
  override func viewDidLoad() {
    super.viewDidLoad()
    effect = visualEffectView.effect
    visualEffectView.effect = nil
    addItemView.layer.cornerRadius = 5
  }
  
  // MARK: - Actions
  @IBAction func addItem(_ sender: UIBarButtonItem) {
    animateIn()
  }
  
  @IBAction func dismissPopUp(_ sender: UIButton) {
    animateOut()
  }
  
  func animateIn() {
    self.view.addSubview(addItemView)
    addItemView.center = self.view.center
    addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
    addItemView.alpha = 0
    
    UIView.animate(withDuration: 0.4) {
      self.visualEffectView.effect = self.effect
      self.addItemView.alpha = 1
      self.addItemView.transform = CGAffineTransform.identity
    }
  }
  
  func animateOut() {
    UIView.animate(withDuration: 0.3, animations: {
      self.addItemView.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
      self.addItemView.alpha = 0
      self.visualEffectView.effect = nil
    }) { (_) in
      self.addItemView.removeFromSuperview()
    }
  }
  
}
