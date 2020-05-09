//
//  regViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/09.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class regViewController: UIViewController {
    
    // タイマー関数
    var timer = Timer()
    
    // カウント変数
    var count:Int = 20
    
    var step = 1
    
    var muscleTime = 20

    // 最初に実行される画面
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate =
            UIApplication.shared.delegate as! AppDelegate
            
        if appDelegate.level == 1 {
            muscleTime = 30
        } else if appDelegate.level == 2 {
            muscleTime = 40
        }
        
        count = muscleTime
        
        // ラベルの文字20を入れる
        countLabel.text = "\(count)"
        // 最初に表示させる文字
        wordLabel.text = "開始"
        
        Timer.scheduledTimer(
            timeInterval: 1,
            target: self,
            selector: #selector(bellyViewController.timerUpdate),
            userInfo: nil,
            repeats: true)
        
        timer.fire()
    
    }
    
    
    @objc func timerUpdate(sender:Timer) {
        
    // 1秒に変数count-1する
        count -= 1
        
    // 変数countの値をLabelに表示する
        countLabel.text = "\(count)"
        
        if count == 0 && step == 1 {
            // countdownが0になっているステップ1のとき
            count = 10
            step = 2
            wordLabel.text = "休んでー！"
            // カウントダウンが２になった時
        } else if step == 2 && count == 0{
            
            // countdownが０になっているステップ２
            count = 20
            step = 3
            wordLabel.text = "開始だ！"
            
        } else if step == 3 && count == 0{
            
            
            performSegue(withIdentifier: "fReg", sender: nil)
        }
        
    }
    
    @IBAction func click(_ sender: Any) {
        performSegue(withIdentifier: "fReg", sender: nil)
  
    }
    
}
