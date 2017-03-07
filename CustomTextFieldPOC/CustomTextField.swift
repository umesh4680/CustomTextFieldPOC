//
//  CustomTextField.swift
//  CustomTextFieldPOC
//
//  Created by Umesh on 23/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

@IBDesignable

class CustomTextField: UIView {
    
    var view : UIView?

    
    // 1  Controls available on View
    var backgroundView : UIView?
    var textFieldLabel : UILabel?
    var textField : UITextField?
    
    // 2
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    // 3
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

       // fatalError("init(coder:) has not been implemented")
        setUpViews()
    }
    
    
    // 4
    func setUpViews(){
        
        view = loadViewFromNib()
        
        if let view = view
        {
            addSubview(view)
           // view.translatesAutoresizingMaskIntoConstraints = false
            view.frame = bounds
            
           // Must Needed other wise view cant load properly
//            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
//            view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
//            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
//            view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            
            instantiateAllViewsWithTags()
        }
    }
    
    // 5
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    
    
    // 6
    func instantiateAllViewsWithTags() {
        
        backgroundView = (view?.viewWithTag(1))! as UIView
        textFieldLabel = view?.viewWithTag(2)  as! UILabel?
        textField = view?.viewWithTag(3) as! UITextField?
    }
    
    
    
    // MARK: -  IBInspectable Properties or Exposed Properties

    @IBInspectable var TFLabelString : String? {
        get{
           // return textFieldLabel?.text
            return textFieldLabel?.text
        }
        set{
            textFieldLabel?.text = newValue
        }
        
    }
    
    @IBInspectable var TFText : String {
        get{
            return (textField?.text)!
        }
        set{
            self.textField?.text = newValue
        }
        
    }
    
    
    func setText(string:NSString)
    {
        textFieldLabel?.text = string as String
    }
    
    

    @IBInspectable var TFHidden : Bool {
        get{
            return (view?.isHidden)!
        }
        set{
            view?.isHidden = newValue
        }
        
    }
    

}
