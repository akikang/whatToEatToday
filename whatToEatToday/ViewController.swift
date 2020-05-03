//
//  ViewController.swift
//  whatToEatToday
//
//  Created by 程航 on 2020/4/29.
//  Copyright © 2020 chenghang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // menu
    let menuList = ["烤鸡翅","油爆大虾","什锦炒蔬菜","香辣翅尖","青椒酿肉","汆烫","白菜肉丸","牛奶咖喱","铁板豆腐","椒盐小土豆","番茄牛腩","蒜蓉粉丝","泡菜五花肉","肉末茄子","清炒藕丁","炒三丁","干锅包菜","鱼香肉丝","肉末蒸蛋"]
    // menu index
    var menuIndex = 0
    var count = 0
    
    //UI components
    @IBOutlet weak var mealLable: UILabel!
    
    //***actions***
    //click what to eat button
    @IBAction func changeMealButton(_ sender: Any) {
        showWang()
    }
    //shake phone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        showWang()
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //***functions***
    //the func to change menu
    func changeMeanul(){
        menuIndex = Int.random(in: 0...18)
        mealLable.text = menuList[menuIndex]
    }
    func showWang() {
        count += 1
        if(count == 3){
            print(count)
            mealLable.text = "红烧密子君"
            return
        }
        changeMeanul()
        
    }

}
