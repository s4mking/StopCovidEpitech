//
//  ViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit

class FirstVisit: UIViewController {

    let blue = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Test")
        
        self.view.addSubViewGrid(view: blue, x: 0, y: 0, width: 4, height: 12, grid: 12)
    }


}

