//
//  bellyViewController.swift
//  Uemuscle
//
//  Created by 上野智弘 on 2020/01/09.
//  Copyright © 2020 uehoho. All rights reserved.
//

import UIKit

class bellyViewController: UIViewController {
    
    
    // タイマー関数
    var timer = Timer()
           
    // カウント変数
    var count:Int = 20
           
    var step = 1
    
    var muscleTime = 20
    
    
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var wordLabel: UILabel!
    
    
// 最初に実行される画面
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        if appDelegate.level == 1 {
            muscleTime = 30
        } else if appDelegate.level == 2 {
            muscleTime = 40
        }
        
        count = muscleTime
        
        //文字を操作する
        //ラベルの文字に２０を入れる
        countLabel.text = "\(count)"
        // 最初に表示させる文字
        wordLabel.text = "開始"
        
        
        
        Timer.scheduledTimer(
            timeInterval: 1, // 実行する時間
            target: self,
            selector: #selector(bellyViewController.timerUpdate(sender:)),
            userInfo: nil,
            repeats: true)
        
        timer.fire()
   
    }
    
    
    
    @objc func timerUpdate(sender:Timer) {
        // 1秒に変数countを-１する
        count -= 1
        
        // 変数countの値をlabelに表示する
        countLabel.text = "\(count)"
        
        if count == 0 && step == 1 {
        // countdownが０になっているステップ１の時
            count = 10
            step = 2
            wordLabel.text = "休憩しよ！"
           // カウントダウンが２になった時
        } else if step == 2 && count == 0{
            //countdownが０になっているステップ２
            count = 20
            step = 3
            wordLabel.text = "再開だ！"
            
        } else if step == 3 && count == 0{
            
            performSegue(withIdentifier: "fBelly", sender: nil)
        }

           
           
       }

    @IBAction func click(_ sender: Any) {
          performSegue(withIdentifier: "fBelly", sender: nil)
    }
    

}
