//
//  TransViewController.swift
//  UIViewAnimationsDemo
//
//  Created by lokizero00 on 2017/10/10.
//  Copyright © 2017年 lokizero00. All rights reserved.
//

import UIKit

class TransViewController: UIViewController {
    @IBOutlet weak var buttonUp:UIButton?
    @IBOutlet weak var buttonDown:UIButton?
    @IBOutlet weak var buttonFlip:UIButton?
    
    var redView:UIView?
    var blueView:UIView?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title="过渡动画"
        self.view.backgroundColor=UIColor.white
        
        redView=UIView(frame: CGRect(x: 0, y: 70, width: UIScreen.main.bounds.width, height: 400))
        redView?.backgroundColor=UIColor.red
        self.view.insertSubview(redView!, at: 0)
        
        blueView=UIView(frame: CGRect(x: 0, y: 70, width: UIScreen.main.bounds.width, height: 400))
        blueView?.backgroundColor=UIColor.blue
        self.view.insertSubview(blueView!, at: 1)
        
        buttonUp?.addTarget(self, action: #selector(self.excessiveAnimationRed), for: .touchUpInside)
        buttonDown?.addTarget(self, action: #selector(self.excessiveAnimationBlue), for: .touchUpInside)
        buttonFlip?.addTarget(self, action: #selector(self.flipAnimation), for: .touchUpInside)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func excessiveAnimationRed(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationTransition(.curlUp, for: self.view, cache: true)
        self.view.exchangeSubview(at: 1, withSubviewAt: 0)
        UIView.commitAnimations()
    }
    
    @objc func excessiveAnimationBlue(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationTransition(.curlDown, for: self.view, cache: true)
        self.view.exchangeSubview(at: 0, withSubviewAt: 1)
        UIView.commitAnimations()
    }
    
    @objc func flipAnimation(){
        UIView.beginAnimations(nil, context: nil)
        UIView.setAnimationDuration(1.0)
        UIView.setAnimationTransition(.flipFromRight, for: self.view, cache: true)
//        UIView.setAnimationTransition(.flipFromLeft, for: self.view, cache: true)
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
