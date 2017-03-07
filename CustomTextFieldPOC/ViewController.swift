//
//  ViewController.swift
//  CustomTextFieldPOC
//
//  Created by Umesh on 23/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ticketNumberTextField: CustomTextField!
    
    
     var backgroundView : UIView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        ticketNumberTextField.TFText = "Changed Programatically"
        ticketNumberTextField.TFHidden = false

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    @IBAction func showAlertButtonClicked(_ sender: Any) {
        
        let myAlertView = CustomAlert()
        myAlertView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView = UIView()
        backgroundView?.backgroundColor = UIColor(white: 0, alpha: 0.8)
        
        
        
        if let window = UIApplication.shared.keyWindow{
            
            window.addSubview(backgroundView!)
            
            backgroundView?.frame = CGRect(x: 0, y: 0, width: window.frame.width, height: window.frame.height)
            
            backgroundView?.addSubview(myAlertView)
            
           
            
            myAlertView.leftAnchor.constraint(equalTo: (backgroundView?.leftAnchor)!, constant: 30).isActive = true
            myAlertView.rightAnchor.constraint(equalTo: (backgroundView?.rightAnchor)!, constant: -30).isActive = true
            
            myAlertView.centerXAnchor.constraint(equalTo: (backgroundView?.centerXAnchor)!).isActive = true
            myAlertView.centerYAnchor.constraint(equalTo: (backgroundView?.centerYAnchor)!).isActive = true
            
            
            
            myAlertView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            backgroundView?.alpha = 0
            
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                myAlertView.transform = CGAffineTransform.identity
                self.backgroundView?.alpha = 1
                
            }, completion: nil)
            
        }

        
    }
    
   */
    
    
    
    @IBAction func showAlertButtonClicked(_ sender: Any){
        
        let myAlertView = CustomAlert()
        myAlertView.translatesAutoresizingMaskIntoConstraints = true
        
        /*
        backgroundView = UIView()
        backgroundView?.backgroundColor = UIColor(white: 0, alpha: 0.8)
        */
        
        var visualEffectView : UIVisualEffectView?
        var effect : UIVisualEffect?

        
        
       // effect = UIBlurEffect()
        visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .dark))
        
        if let window = UIApplication.shared.keyWindow{
            
            window.addSubview(visualEffectView!)
            
//            backgroundView?.frame = CGRect(x: 0, y: 0, width: window.frame.width, height: window.frame.height)
            
            visualEffectView?.frame = window.frame
            visualEffectView?.center = window.center
            
            visualEffectView?.addSubview(myAlertView)
           // myAlertView.center = window.center
            
            
//            backgroundView?.addSubview(myAlertView)
            
            
         /*
             
            myAlertView.leftAnchor.constraint(equalTo: (backgroundView?.leftAnchor)!, constant: 30).isActive = true
            myAlertView.rightAnchor.constraint(equalTo: (backgroundView?.rightAnchor)!, constant: -30).isActive = true
            
            myAlertView.centerXAnchor.constraint(equalTo: (backgroundView?.centerXAnchor)!).isActive = true
            myAlertView.centerYAnchor.constraint(equalTo: (backgroundView?.centerYAnchor)!).isActive = true
            
            
            
            myAlertView.transform = CGAffineTransform(scaleX: 1.2, y: 1.2)
            */
            
          /*
            backgroundView?.alpha = 0
            
            UIView.animate(withDuration: 0.25, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
                
                myAlertView.transform = CGAffineTransform.identity
                self.backgroundView?.alpha = 1
                
            }, completion: nil)
            
            */
            
            
            
        }
        
    }
    

}

