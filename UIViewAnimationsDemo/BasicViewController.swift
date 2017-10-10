//
//  BasicViewController.swift
//  UIViewAnimationsDemo
//
//  Created by lokizero00 on 2017/9/29.
//  Copyright © 2017年 lokizero00. All rights reserved.
//

import UIKit

class BasicViewController: UIViewController {
    @IBOutlet weak var buttonFadeIn:UIButton!
    @IBOutlet weak var buttonFadeOut:UIButton!
    @IBOutlet weak var buttonMoveUp:UIButton!
    @IBOutlet weak var buttonFrame:UIButton!
    
    @IBOutlet weak var colorView:UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="基本动画"
        self.view.backgroundColor=UIColor.white
        
        buttonFadeIn.addTarget(self, action: #selector(self.simpleAnimationFadeIn), for: .touchUpInside)
        buttonFadeOut.addTarget(self, action: #selector(self.simpleAnimationFadeOut), for: .touchUpInside)
        buttonMoveUp.addTarget(self, action: #selector(self.simpleAnimationMoveUp), for: .touchUpInside)
        buttonFrame.addTarget(self, action: #selector(self.simpleAnimationFrame), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func simpleAnimationFadeIn(){
        //        UIView.beginAnimations(nil, context: nil)
        //        UIView.setAnimationDuration(2.0)
        //        colorView.alpha=0.0
        //        UIView.commitAnimations()
        
        UIView.animate(withDuration: 2.0, animations: {
            ()->Void in
            self.colorView.alpha=0.0
        })
    }
    
    @objc func simpleAnimationFadeOut(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(2.0)
        colorView.alpha=1.0
        UIView.commitAnimations()
    }
    
    @objc func simpleAnimationMoveUp(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(2.0)
        colorView.center=CGPoint(x: colorView.center.x, y: colorView.center.y-50)
        UIView.setAnimationCurve(.easeOut)
        UIView.commitAnimations()
    }
    
    @objc func simpleAnimationFrame(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(2.0)
        colorView.frame=CGRect(x: colorView.frame.origin.x, y: colorView.frame.origin.y, width: colorView.frame.width-100, height: colorView.frame.height-100)
        UIView.commitAnimations()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
