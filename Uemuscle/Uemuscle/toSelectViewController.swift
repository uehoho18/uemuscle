//
//  toSelectViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/13.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class toSelectViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    
    @IBAction func syowButton(_ sender: Any) {
        performSegue(withIdentifier: "toBreast", sender: nil)
    }
    
    
    @IBAction func haraButton(_ sender: Any) {
           performSegue(withIdentifier: "toBelly", sender: nil)
    }
    
    
    
    @IBAction func regButton(_ sender: Any) {
           performSegue(withIdentifier: "toReg", sender: nil)
    }
    
}
