//
//  ViewController.swift
//  Animations
//
//  Created by mn on 24/05/16.
//  Copyright © 2016 mn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alientImage: UIImageView!
    
    var counter = 1
    var timer = NSTimer()
    var isAnimating = true
    
    @IBAction func updateImage(sender: AnyObject) {
        if isAnimating == true{
            timer.invalidate()
            isAnimating = false
        }else{
            timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
            isAnimating = true
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        timer = NSTimer.scheduledTimerWithTimeInterval(0.3, target: self, selector: Selector("doAnimation"), userInfo: nil, repeats: true)
    }
    
    func doAnimation(){
        if counter == 4{
            counter = 1
        }else{
            counter = counter+1
        }
    alientImage.image = UIImage(named: "frame\(counter).png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        //alientImage.center = CGPointMake(alientImage.center.x-400, alientImage.center.y)
        //alientImage.alpha = 0
        //alientImage.frame = CGRectMake(100, 20, 0, 0)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: { ()->Void in
            //self.alientImage.center = CGPointMake(self.alientImage.center.x+400, self.alientImage.center.y)
            //self.alientImage.alpha = 1
            //self.alientImage.frame = CGRectMake(100, 20, 100, 200)
        })
    }

}

