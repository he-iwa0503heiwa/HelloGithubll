//
//  ViewController.swift
//  original
//
//  Created by heiwa on 2015/12/24.
//  Copyright © 2015年 heiwa. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {
    @IBOutlet var label:UILabel!
       @IBOutlet var label2:UILabel!
    var myNumber :Float = 100
    let manager = CMMotionManager()

       override func viewDidLoad() {
        super.viewDidLoad()
               //取得の間隔
        
        manager.accelerometerUpdateInterval = 0.1
        let handler:CMAccelerometerHandler = {(data:CMAccelerometerData?, error:NSError?) -> Void in
//            print(data!.acceleration.x)
//            print(data!.acceleration.y)
//            print(data!.acceleration.z)
//            print("x:\(data!.acceleration.x) y:\(data!.acceleration.y) z:\(data!.acceleration.z)")
//            print("x:\(data!.acceleration.x) y:\(data!.acceleration.y)")
//            NSLog("X:%.2f Y:%.2f",data!.acceleration.x, data!.acceleration.y)
            
            var zetaitiX:Float = abs(Float (data!.acceleration.x))
            var zetaitiy:Float = abs(Float (data!.acceleration.y))
           
            self.label.text = String(format: "%.2f", zetaitiX)
            self.label2.text = String(format: "%.2f", zetaitiy)

//            self.number = self.number - Int (zetaitiX)
//            self.number = self.number - Int (zetaitiy)
//
            self.myNumber = self.myNumber - (zetaitiX + zetaitiy) * 100
            print(self.myNumber)

        }
        if (manager.accelerometerActive) {
            manager.stopAccelerometerUpdates()
        }
        
        //取得開始
        manager.startAccelerometerUpdatesToQueue(NSOperationQueue.currentQueue()!, withHandler:handler)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
      }

