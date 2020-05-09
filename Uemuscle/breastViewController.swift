//
//  breastViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/09.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class breastViewController: UIViewController {
    
    // タイマー変数
    var timer = Timer()
    
    // カウント変数
    var count:Int = 20
    
    var step = 1
    
    var muscleTime = 20
    
    
    @IBOutlet weak var wordLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
//    最初に実行される画面
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if appDelegate.level == 1 {
            muscleTime = 30
        } else if appDelegate.level == 2 {
            muscleTime = 40
        }
        
        count = muscleTime
        
//      文字を操作する
//        ラベルの文字に２０を入れる
        timerLabel.text = "\(count)"
        // 最初に表示させる文字
        wordLabel.text = "開始"
        
//    // タイマー実行
//    Timer.scheduledTimer(
//            timeInterval: 20, // 実行する時間
//            target: self,
//            selector: #selector(breastViewController.CountDown),//実行関数
//            userInfo: nil,
//            repeats: false)
        
    Timer.scheduledTimer(
            timeInterval: 1, //実行する時間
            target: self,
            selector: #selector(breastViewController.timerAction(sender:)), // 実行する処理
            userInfo: nil,
            repeats: true)
                
        timer.fire()
        }
    
    
//
//    @objc func timerUpdate() {
//        count -= 20
//        timerLabel.text = "\(count)"
////        performSegue(withIdentifier: "fBreast", sender: nil)
//    }
//
//    @objc func CountDown() {
//
//    }
    
    @objc func timerAction(sender:Timer){
        // 1秒毎に変数countをー１する
        count -= 1
        
        // 変数countの値をlabelに表示する
        timerLabel.text = "\(count)"
        
        if count == 0 && step == 1 {
            // countdownが０になっていステップ１の時
            count = 10
            step = 2
            wordLabel.text = "休憩中"
            
            
        } else if step == 2 && count == 0{
            
            // countdownが０になっているステップ２
            count = muscleTime
            step = 3
            wordLabel.text = "始め！"
            
        } else if step == 3 && count == 0{
            performSegue(withIdentifier: "fBreast", sender: nil)
        }
        
//        if count == 0 {
//
//            // 次の画面へ遷移する
//            performSegue(withIdentifier: "fBreast", sender: nil)
//
//        }
    }
    
    @IBAction func breastClick(_ sender: Any) {
        performSegue(withIdentifier: "fBreast", sender: nil)
        
    }
    
}
