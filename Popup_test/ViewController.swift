//
//  ViewController.swift
//  Popup_test
//
//  Created by 박훈성 on 2021/03/12.
//

import UIKit
import WebKit

class ViewController: UIViewController {
  
  @IBOutlet weak var createPopUpBtn: UIButton!
  @IBOutlet weak var myWebView: WKWebView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func onCreatePopUpBtnClicked(_ sender: UIButton) {
    let storyboard = UIStoryboard.init(name:"PopUp",bundle: nil)
    let customPopUpVC = storyboard.instantiateViewController(identifier: "AlertPopUpVC") as! CustomPopUpViewController
    
    //팝업 효과
    customPopUpVC.modalPresentationStyle = .overCurrentContext
    //사라지는 효과
    customPopUpVC.modalTransitionStyle = .crossDissolve
    
    customPopUpVC.moveBtnCompletionCloser = {
      let myPlaystoreUrl = URL(string: "https://play.google.com/store/apps/details?id=com.nangman.govfi")
      self.myWebView.load(URLRequest(url: myPlaystoreUrl!))
    }
    
    self.present(customPopUpVC, animated: true, completion: nil)
  }
  
}
