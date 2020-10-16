//
//  QRCodeDisplayViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 15/10/2020.
//

import UIKit

class QRCodeDisplayViewController: UIViewController {
   
   

    override func viewDidLoad() {        
        let imgQRCode = UIImage()
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let swiftLeeOrangeColor = UIColor(red:0.93, green:0.31, blue:0.23, alpha:1.00)
        let swiftLeeLogo = UIImage(named: "LOGO")!
        let qrURLImage = URL(string: "https://www.avanderlee.com")?.qrImage(using: swiftLeeOrangeColor, logo: swiftLeeLogo)
        let imageView = UIImageView()
        imageView.image = UIImage(ciImage: qrURLImage!)
//        imageView
        
        //self.view = qrURLImage
        //self.view.addSubview(imageView)
        self.view.addSubViewGrid(view: imageView, x: 2, y: 2, width: 6, height: 6, grid: 12)
       // self.view.addSubViewGrid(view: imageView, x: 2, y: 2, width: 6, height: 6, grid: 12)
    }
   
}
