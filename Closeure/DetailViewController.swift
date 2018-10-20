//
//  DetailViewController.swift
//  Closeure
//
//  Created by Trung on 10/4/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

//typealias dh = (_ infoToReturn :String) ->()


class DetailViewController: UIViewController{
    
   
    @IBOutlet weak var textFieldDVC: UITextField!
    var data: String?
  
    
    /////
    override func viewDidLoad() {
        super.viewDidLoad()
        if data != nil {
            textFieldDVC.text = data
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    ////////
    var callBack: ((_ data: String) -> Void)?
    
    @IBAction func returnFirstValue(_ sender: UIButton) {
        guard let backData = textFieldDVC.text else { return }
        
        callBack?(backData)
        
        navigationController?.popViewController(animated: true)
        
    }
 

}
