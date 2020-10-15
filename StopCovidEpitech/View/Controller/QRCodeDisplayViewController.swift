//
//  QRCodeDisplayViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 15/10/2020.
//

import UIKit

class QRCodeDisplayViewController: UIViewController {
   
    let imgQRCode = UIImage()


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func generateQRCode(from string: String) -> UIImage?
        {
            let data = string.data(using: String.Encoding.ascii)

            if let filter = CIFilter(name: "CIQRCodeGenerator")
            {
                filter.setValue(data, forKey: "toto")

                guard let qrImage = filter.outputImage else {return nil}
                let scaleX = self.imgQRCode.frame.size.width / qrImage.extent.size.width
                let scaleY = self.imgQRCode.frame.size.height / qrImage.extent.size.height
                let transform = CGAffineTransform(scaleX: scaleX, y: scaleY)

                if let output = filter.outputImage?.transformed(by: transform)
                {
                    return UIImage(ciImage: output)
                }
            }
            return nil
        }
}
