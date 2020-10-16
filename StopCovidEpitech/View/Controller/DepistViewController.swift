//
//  DepistViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit
import MapKit

class DepistViewController: UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            
            let pink = UIColor(hex: "#FDA3A3ff")
            let grey = UIColor(hex: "#DDE6E7ff")
            let green = UIColor(hex: "#22A5A7ff")
            let lightGreen = UIColor(hex: "#8CD9C0ff")
            let orange = UIColor(hex: "#F5AE6Dff")
            let red = UIColor(hex: "#F84C4Cff")
            
            
            let title = UILabel()
            let searchBar = UISearchBar()
            let logo = UIImageView()
            logo.image = UIImage(named: "LOGO.png")
            searchBar.showsScopeBar = false
            
            title.text = "Se faire dépister !"
            title.font = UIFont.systemFont(ofSize: 40, weight: .bold)
            title.textColor = .black
            title.textAlignment = .center
            
           
            self.view.addSubViewGrid(view: title, x: 0, y: 0, width: 12, height: 2, grid: 12)
            self.view.addSubViewGrid(view: searchBar, x: 0, y: 2, width: 12, height: 1, grid: 12)
          
        }
 
     

    }

class DepistViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
