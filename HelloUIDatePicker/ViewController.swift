//
//  ViewController.swift
//  HelloUIDatePicker
//
//  Created by 洪德晟 on 2016/10/5.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myNumber = 10
    var mytimer: Timer?
    
    @IBAction func reCount(_ sender: UIButton) {
        
        myNumber = 30
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
    }
    
    @IBOutlet weak var myDatePicker: UIDatePicker!
    
    @IBAction func giveMeTime(_ sender: UIButton) {
        
        let date = myDatePicker.date                        // 現在選到的時間
        let dateFormatter = DateFormatter()                 // 生出DateFormatter
        dateFormatter.dateStyle = .full                     // 調整顯示時間格式
        let dateString = dateFormatter.string(from: date)   // 把date轉換成字串
        print(dateString)
        
        
        // 時間倒數器
        mytimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(ViewController.countdown), userInfo: nil, repeats: true)
        
    }
    
    func countdown() {
        
        // 間格之間發生的事
        myNumber -= 1
        print(myNumber)
        
        // 如果小於零，停止下來
        if myNumber == 0 {
            mytimer?.invalidate()
        }
    }
    
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let date = Date()                                   // 生出時間
        let dateFormatter = DateFormatter()                 // 生出DateFormatter
        dateFormatter.dateStyle = .full                     // 調整顯示時間格式
        
        dateFormatter.dateFormat = "hh/mm/ss"
        
        // 把字串轉換成date
        //        let dateString2 = "12/11/03"
        //        let myDate = dateFormatter.date(from: dateString2)
        //        print(myDate)
        
        let dateString = dateFormatter.string(from: date)               // 把date轉換成字串
        //        let dateStringArray = dateString.components(separatedBy: ",") // 轉換成Array
        print(dateString)
        //        print(dateStringArray[0])
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

