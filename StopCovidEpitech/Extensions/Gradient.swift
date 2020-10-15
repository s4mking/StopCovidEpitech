//
//  Gradient.swift
//  StopCovidEpitech
//
//  Created by Mohamed on 14/10/2020.
//

import Foundation
import UIKit

extension UIView {
    func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
//        let gradientLayer = CAGradientLayer()
//        gradientLayer.frame = bounds
//        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
//        gradientLayer.locations = [0.0, 1.0]
//        gradientLayer.startPoint = CGPoint(x: 1.0, y:1.0)
//        gradientLayer.endPoint = CGPoint(x: 0.0, y:0.0)
        
//        layer.insertSublayer(gradientLayer, at: 0)
        
        let gradientLayer = CAGradientLayer()
                gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
                gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
                gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
                gradientLayer.locations = [0, 1]
                gradientLayer.frame = bounds

                layer.insertSublayer(gradientLayer, at: 0)
                self.layer.masksToBounds = true
        
        
        
        
    }
}
