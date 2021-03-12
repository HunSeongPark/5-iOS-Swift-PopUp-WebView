//
//  CustomPopUpViewController.swift
//  Popup_test
//
//  Created by 박훈성 on 2021/03/12.
//

import UIKit

class CustomPopUpViewController: UIViewController {
  
  @IBOutlet weak var contentView: UIView!
  @IBOutlet weak var moveBtn: UIButton!
  @IBOutlet weak var bgBtn: UIButton!
  
  var moveBtnCompletionCloser: (() -> Void)?
  
  override func viewDidLoad() {
    super.viewDidLoad()
  
    contentView.layer.cornerRadius = 30
    moveBtn.layer.cornerRadius = 10
  }
  @IBAction func onBgBtnClicked(_ sender: UIButton) {
    self.dismiss(animated: true, completion: nil)
  }
  
  @IBAction func onMoveBtnClicked(_ sender: UIButton) {
    
    self.dismiss(animated: true, completion: nil)
    
    //completion block called
    if let moveBtnCompletionCloser = moveBtnCompletionCloser {
      moveBtnCompletionCloser()
    }
  }
}
