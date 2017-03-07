//
//  CustomAlert.swift
//  CustomTextFieldPOC
//
//  Created by Umesh on 23/02/17.
//  Copyright © 2017 Umesh. All rights reserved.
//

import UIKit

class CustomAlert: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    private var view : UIView?
    
    private var parentToImageView : UIView?
    private var alertLabel : UILabel?
    
    private var buttonYes : UIButton?
    private var buttonNo : UIButton?

    private var titleLabel : UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        //fatalError("init(coder:) has not been implemented")
        super.init(coder: aDecoder)
        setupViews()
    }
    
    
    func setupViews()
    {
        
        view = loadViewFromNib()
        
        if let view = view {
            addSubview(view)
            view.translatesAutoresizingMaskIntoConstraints = false
            view.frame = bounds
            
            view.topAnchor.constraint(equalTo: topAnchor).isActive = true
            view.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
            view.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
            view.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
            instantiateAllViewsWithTags()
        }
        
        
    }
    
    
    func instantiateAllViewsWithTags() {
        
        
        parentToImageView = view?.viewWithTag(1)
        titleLabel = view?.viewWithTag(2) as? UILabel
        alertLabel = view?.viewWithTag(3) as? UILabel
        buttonYes = view?.viewWithTag(4) as? UIButton
        buttonNo = view?.viewWithTag(5) as? UIButton

        
    }
    
    func loadViewFromNib() -> UIView {
        
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }
    

}
