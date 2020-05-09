//
//  ViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2019/12/19.
//  Copyright © 2019 uehoho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ueimage = UIImage(named: "ueimage")
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func click(_ sender: Any) {
        
        
        performSegue(withIdentifier: "toSecond", sender: nil)
        
    }
    
    
}
