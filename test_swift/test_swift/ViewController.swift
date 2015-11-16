//
//  ViewController.swift
//  test_swift
//
//  Created by baoyuanyong on 15/11/15.
//  Copyright © 2015年 baoyuanyong. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UIView.init(frame: CGRectMake(0, 0, 100, 100));
        view.backgroundColor = UIColor.redColor();
        self.view.addSubview(view);
        
        
        let btn:UIButton = UIButton(type: UIButtonType.Custom);
        btn.backgroundColor = UIColor.blueColor();
        btn.frame = CGRectMake(0, 0, 200, 50);
        btn.setTitle("test", forState: UIControlState.Normal);
        self.view.addSubview(btn);
        
        
        let img:UIImage? = UIImage(named: "1.jpg");
        btn.setImage(img, forState: .Normal);
        
        
        btn.addTarget(self, action: Selector("click"), forControlEvents: .TouchUpInside);
        btn.addTarget(self, action: Selector("click:"), forControlEvents: .TouchDown);
        
        
        let textField = UITextField.init(frame: CGRectMake(100, 220, 100, 50));
        textField.layer.cornerRadius = 3;
        textField.layer.borderColor = UIColor.blueColor().CGColor;
        textField.layer.borderWidth = 2;
        textField.borderStyle = UITextBorderStyle.RoundedRect;
        textField.contentVerticalAlignment = .Top;
        textField.delegate = self;
        
        self.view.addSubview(textField);
    
    }
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
    
        return true;
    }
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        print("\(textField.text)");
        return true;
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let transition = CATransition();
        transition.duration = 3;
        transition.type = kCATransitionPush;
        transition.subtype = kCATransitionFromLeft;
        self.view.exchangeSubviewAtIndex(1, withSubviewAtIndex: 0);
        self.view.layer.addAnimation(transition, forKey: nil);
    }
    
    
    
    
    func click()
    {
        print("click");
    }
    func click(button:UIButton){
        print("click:\(button)");
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

