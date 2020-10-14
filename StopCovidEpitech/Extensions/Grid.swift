//
//  Grid.swift
//  StopCovidEpitech
//
//  Created by Samuel on 14/10/2020.
//

import Foundation
import UIKit

extension UIView {
    
    func addSubViewGrid(view: UIView, x: CGFloat, y: CGFloat, width: CGFloat, height: CGFloat, grid: CGFloat) {
        view.frame = CGRect(
            x: x * self.frame.width / grid,
            y: y * self.frame.height / grid,
            width: width * self.frame.width / grid,
            height: height * self.frame.height / grid
        )
        self.addSubview(view)
    }
    
    
}
