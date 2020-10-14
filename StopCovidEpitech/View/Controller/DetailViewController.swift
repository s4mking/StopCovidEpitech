//
//  DetailViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 14/10/2020.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: CopyLabel!
    
    var qrData: QRData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailLabel.text = qrData?.codeString
        UIPasteboard.general.string = detailLabel.text
        showToast(message : "Text copied to clipboard")

    }

    @IBAction func openInWebAction(_ sender: Any) {
        if let url = URL(string: qrData?.codeString ?? ""), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [:])
        } else {
            showToast(message : "Not a valid URL")
        }
    }
}
