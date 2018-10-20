//
//  ViewController.swift
//  Closeure
//
//  Created by Trung on 10/4/18.
//  Copyright © 2018 TrungCatun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    

    @IBOutlet weak var textFieldVC: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailViewController = segue.destination as? DetailViewController {
            detailViewController.data = textFieldVC.text
            detailViewController.callBack = { [weak self] data in
                self?.textFieldVC.text = data
            }
        }
    }
}





