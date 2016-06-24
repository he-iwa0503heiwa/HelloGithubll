//
//  ResultViewController.swift
//  original
//
//  Created by heiwa on 2016/02/19.
//  Copyright © 2016年 heiwa. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var myNumber: Float!
    var highScore: Float!
    
    @IBOutlet var label: UILabel!
    
    @IBOutlet var rankingLabel1: UILabel!
    @IBOutlet var rankingLabel2: UILabel!
    @IBOutlet var rankingLabel3: UILabel!
    @IBOutlet var bestscore : UILabel!
    
    let defaults: NSUserDefaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        
        rankingLabel1.text = String(defaults.floatForKey("score1"))
        rankingLabel2.text = String(defaults.floatForKey("score2"))
        rankingLabel3.text = String(defaults.floatForKey("score3"))
        
        highScore = defaults.floatForKey("score1")
        print(highScore)
        print(myNumber)
    
        
        super.viewDidLoad()
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(double: 0)
        animation.toValue = NSNumber(double: 2 * M_PI)
        animation.valueFunction = CAValueFunction(name: kCAValueFunctionRotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
//        
        if myNumber == highScore {
            bestscore.text = "ハイスコア"
            label.textColor = UIColor.redColor()

            //                bestsocor.hidden = true
            //                bestsocor.hidden = false
        }
        
        
        
        //        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
        //        var message = appDelegate.message
        //
        //        label1.text = message
        
        // Do any additional setup after loading the view.
        label.text = String(myNumber)
        
        
    }
    @IBAction func toTop() {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
