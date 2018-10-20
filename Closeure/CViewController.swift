//
//  CViewController.swift
//  Closeure
//
//  Created by Trung on 10/8/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

protocol CViewControllerDelegate: class {
    func backData(dataBack: String)
}
class CViewController: UIViewController {
    
    @IBOutlet weak var textCVC: UITextField!
    var dataC: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if dataC != nil {
            textCVC.text = dataC
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   weak var delegate: CViewControllerDelegate?
    @IBAction func buttonCVC(_ sender: UIButton) {
       delegate?.backData(dataBack: textCVC.text ?? "")
        
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    
   

}
