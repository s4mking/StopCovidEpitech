//
//  CodeCovidViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//
import UIKit

class CodeCovidViewController: UIViewController {
    
    let titre = UILabel()
    let paragraphe = UILabel()
    let image = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titre.text = "Où se trouve mon test Covid ?"
        titre.font = titre.font.withSize(22)
        titre.textAlignment = .center
        paragraphe.text="Votre code COVID se trouve sur le document reçu lors de votre test, dans un encadré en dessous de votre numéro de sécurité sociale, il comporte 5 chiffres"
        paragraphe.numberOfLines = 0
        paragraphe.lineBreakMode = NSLineBreakMode.byWordWrapping
        paragraphe.frame.size.width = CGFloat(MAXFLOAT)
        paragraphe.frame.size.height = CGFloat(MAXFLOAT)
        paragraphe.sizeToFit()
        paragraphe.textAlignment = .center
        let imageResult = UIImage(named: ("doc"))
        let imageView = UIImageView(image: imageResult)
        titre.backgroundColor = .red
        paragraphe.backgroundColor = .blue
        image.backgroundColor = .green
        let imageResult = UIImage(named: ("Bitmap"))
        let imageView = UIImageView(image: imageResult!)
        
        self.view.addSubViewGrid(view: titre, x: 1, y: 0, width: 10, height: 2, grid: 12)
        self.view.addSubViewGrid(view: paragraphe, x: 1, y: 2, width: 10, height: 3, grid: 12)
        self.view.addSubViewGrid(view: image, x: 1, y: 6, width: 10, height: 5, grid: 12)
        image.addSubViewGrid(view:imageView, x: 0, y: 0, width: 12, height: 12, grid: 12)

        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.moveCovid)))
    }
 
    @IBAction func moveCovid(_ sender: Any) {
        performSegue(withIdentifier: "suitecodecovid", sender: nil)
    }
    
//    @objc func onPressTap(sender: UITapGestureRecognizer) {
//        didAppear(true)
//    }
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.onPressTap)))
    }
    
    func didAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        performSegue(withIdentifier: "codeCovid", sender: nil)
    }
    @objc func onPressTap(sender: UITapGestureRecognizer) {
        didAppear(true)
    }
}
