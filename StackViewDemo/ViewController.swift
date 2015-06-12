//
//  ViewController.swift
//  StackViewDemo
//
//  Created by Jordan Morgan on 6/10/15.
//  Copyright © 2015 Jordan Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var verticalStackView: UIStackView!
    @IBOutlet weak var horizontalStackView: UIStackView!
    
    @IBAction func removeStar(sender: AnyObject)
    {
        let star:UIView? = self.horizontalStackView.arrangedSubviews.last
        if let aStar = star
        {
            self.horizontalStackView.removeArrangedSubview(aStar)
            aStar.removeFromSuperview()
            UIView.animateWithDuration(0.25, animations: {
                self.horizontalStackView.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func addStar(sender: AnyObject)
    {
        let starImgVw:UIImageView = UIImageView(image: UIImage(named: "star"))
        starImgVw.contentMode = .ScaleAspectFit
        self.horizontalStackView.addArrangedSubview(starImgVw)
        UIView.animateWithDuration(0.25, animations: {
            self.horizontalStackView.layoutIfNeeded()
        })
        
    }
}

