//
//  selectViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/09.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class selectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showButton(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.level = 0
        performSegue(withIdentifier: "toFours", sender: nil)
    }
    
    
    @IBAction func chuButton(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.level = 1
          performSegue(withIdentifier: "toFours", sender: nil)
        
    }
    
    
    @IBAction func jouButton(_ sender: Any) {
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.level = 2
          performSegue(withIdentifier: "toFours", sender: nil)
        
        
    }
    
}
