//
//  CodeCovidViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit

class CodeCovidViewController: UIViewController {
    let titre = UIView()
    let paragraphe = UIView()
    let image = UIView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        print("hello")
        
        titre.backgroundColor = .blue
        paragraphe.backgroundColor = .blue
        image.backgroundColor = .blue
        
        self.view.addSubViewGrid(view: titre, x: 0, y: 0, width: 4, height: 12, grid: 12)
        self.view.addSubViewGrid(view: paragraphe, x: 0, y: 0, width: 4, height: 12, grid: 12)
        self.view.addSubViewGrid(view: image, x: 0, y: 0, width: 4, height: 12, grid: 12)
    }
    
}
