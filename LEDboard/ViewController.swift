//
//  ViewController.swift
//  LEDboard
//
//  Created by HyunSoo on 10/14/23.
//

import UIKit

class ViewController: UIViewController, LEDBoardSettingDelegate {

  @IBOutlet weak var contentsLabel: UILabel!

  override func viewDidLoad() {
    super.viewDidLoad()
    self.contentsLabel.textColor = .yellow
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let settingViewController = segue.destination as? SettingViewController {
      settingViewController.delegate = self
      settingViewController.ledText = self.contentsLabel.text
      settingViewController.textColor = self.contentsLabel.textColor
      settingViewController.backgroudColor = self.view.backgroundColor ?? .black
    }
  }

  func changedSetting(text: String?, textColor: UIColor, backgroudColor: UIColor) {
    if let text = text {
      self.contentsLabel.text = text
    }
    self.contentsLabel.textColor = textColor
    self.view.backgroundColor = backgroudColor
  }
}


