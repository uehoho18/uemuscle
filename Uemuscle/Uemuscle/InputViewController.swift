//
//  InputViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/08.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class InputViewController: UIViewController {
    
    @IBOutlet weak var heightPickerView: UIPickerView!
    
    // 身長の数値入力
    let height = [Int](130..<200)

    @IBAction func click(_ sender: Any) {
        
    performSegue(withIdentifier: "toThird", sender: nil)
        
    }
    
    
    @IBOutlet weak var weightPickerView: UIPickerView!
    
    // 体重の数値入力
    let weight = [Int](30..<130)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        heightPickerView.delegate = self
        heightPickerView.dataSource = self
        weightPickerView.delegate = self
        weightPickerView.dataSource = self
        
    }

}


extension InputViewController:UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if pickerView.tag == 1 {
            return height.count
        } else {
            return weight.count
        }
        
        
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView.tag == 1 {
        return "\(height[row])"
    } else {
        return "\(weight[row])"
    }
    
    }
}
