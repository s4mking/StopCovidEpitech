//
//  DashboardViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
//        print(self.view)
        
        let block = UIView()
        block.backgroundColor = .red
        
        self.view.addSubViewGrid(view: block, x: 2, y: 2, width: 12, height: 12, grid: 12)
        
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        performSegue(withIdentifier: "Test", sender: nil)
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
