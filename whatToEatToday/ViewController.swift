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
    let menuList = ["烤鸡翅","油爆大虾","什锦炒蔬菜","香辣翅尖","青椒酿肉","汆烫","白菜肉丸","牛奶咖喱","铁板豆腐","椒盐小土豆","番茄牛腩","蒜蓉粉丝","泡菜五花肉"]
    // menu index
    var menuIndex = 0
    
    //UI components
    @IBOutlet weak var mealLable: UILabel!
    
    //***actions***
    //click what to eat button
    @IBAction func changeMealButton(_ sender: Any) {
        changeMeanul()
    }
    //shake phone
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        changeMeanul()
    }
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //***functions***
    //the func to change menu
    func changeMeanul(){
        menuIndex = Int.random(in: 0...13)
        mealLable.text = menuList[menuIndex]
    }

}
