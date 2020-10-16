//
//  SymptomesViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit

import SimpleCheckbox

class SymptomesViewController: UIViewController {

    let titre = UILabel()
    let paragraphe = UILabel()
    let container = UIView()
    let button = UIButton()
    let green = UIColor(hex: "#22A5A7ff")
    let label1 = UILabel()
    let label2 = UILabel()
    let label3 = UILabel()
    let label4 = UILabel()
    let label5 = UILabel()
    let label6 = UILabel()
    let label7 = UILabel()
    let textlabel1="Fièvre supérieure à 38°"
    let textlabel2="Toux sèche"
    let textlabel3="Courbatures"
    let textlabel4="Douleurs musculaires"
    let textlabel5="Frissons"
    let textlabel6="Maux de tête"
    let textlabel7="Rhume"
        
    override func viewDidLoad() {
    
        super.viewDidLoad()
        titre.text = "Ai je le Covid ?"
        titre.font = titre.font.withSize(22)
        titre.textAlignment = .center
        paragraphe.text="Indiquez vos symptômes pour savoir où vous vous situez"
        paragraphe.numberOfLines = 0
        paragraphe.lineBreakMode = NSLineBreakMode.byWordWrapping
        paragraphe.frame.size.width = CGFloat(MAXFLOAT)
        paragraphe.frame.size.height = CGFloat(MAXFLOAT)
        paragraphe.sizeToFit()
        paragraphe.textAlignment = .center
     
        
        // square
           let squareBox = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
            squareBox.checkmarkColor = green
           squareBox.checkmarkStyle = .square
           squareBox.uncheckedBorderColor = .lightGray
        squareBox.checkedBorderColor = .lightGray
           squareBox.borderLineWidth = 1
        
        let squareBox2 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox2.tintColor = .red
        squareBox2.borderStyle = .square
        squareBox2.checkmarkColor = green
        squareBox2.checkmarkStyle = .square
        squareBox2.uncheckedBorderColor = .lightGray
     squareBox2.checkedBorderColor = .lightGray
        squareBox2.borderLineWidth = 1
       
        let squareBox3 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox3.tintColor = green
        squareBox3.checkmarkColor = green
        squareBox3.borderStyle = .square
        squareBox3.checkmarkStyle = .square
        squareBox3.uncheckedBorderColor = .lightGray
     squareBox3.checkedBorderColor = .lightGray
        squareBox3.borderLineWidth = 1
   
        let squareBox4 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox4.tintColor = green
        squareBox4.checkmarkColor = green
        squareBox4.borderStyle = .square
        squareBox4.checkmarkStyle = .square
        squareBox4.uncheckedBorderColor = .lightGray
        squareBox4.checkedBorderColor = .lightGray
        squareBox4.borderLineWidth = 1
   
        let squareBox5 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox5.tintColor = green
        squareBox5.checkmarkColor = green
        squareBox5.borderStyle = .square
        squareBox5.checkmarkStyle = .square
        squareBox5.uncheckedBorderColor = .lightGray
        squareBox5.checkedBorderColor = .lightGray
        squareBox5.borderLineWidth = 1
      
        let squareBox6 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox6.tintColor = green
        squareBox6.borderStyle = .square
        squareBox6.checkmarkColor = green
        squareBox6.checkmarkStyle = .square
        squareBox6.uncheckedBorderColor = .lightGray
        squareBox6.checkedBorderColor = .lightGray
        squareBox6.borderLineWidth = 1
        
        let squareBox7 = Checkbox(frame: CGRect(x: 25, y: 25, width: 25, height: 25))
        squareBox7.tintColor = .black
        squareBox7.checkmarkColor = green
        squareBox7.borderStyle = .square
        squareBox7.checkmarkStyle = .square
        squareBox7.uncheckedBorderColor = .lightGray
        squareBox7.checkedBorderColor = .lightGray
        squareBox7.borderLineWidth = 1

        label1.text = textlabel1
        label2.text = textlabel2
        label3.text = textlabel3
        label4.text = textlabel4
        label5.text = textlabel5
        label6.text = textlabel6
        label7.text = textlabel7
        
        button.setTitle("Confirmer", for: .normal)
        button.backgroundColor = green
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.cgColor
        
        self.view.addSubViewGrid(view: container, x: 0, y: 5, width: 12, height: 6.5, grid: 20)
        self.view.addSubViewGrid(view: titre, x: 1, y: 0.5, width: 10, height: 2, grid: 12)
        self.view.addSubViewGrid(view: paragraphe, x: 1, y: 2, width: 10, height: 1, grid: 12)
        container.addSubViewGrid(view: squareBox, x: 1, y: 1, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label1, x: 5, y: 1, width: 12, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label2, x: 5, y: 4, width: 8, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label3, x: 5, y: 7, width: 8, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label4, x: 5, y: 10, width: 12, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label5, x: 5, y: 13, width: 8, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label6, x: 5, y: 16, width: 8, height: 1.5, grid: 12)
        container.addSubViewGrid(view: label7, x: 5, y: 19, width: 8, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox2, x: 1, y: 4, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox3, x: 1, y: 7, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox4, x: 1, y: 10, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox5, x: 1, y: 13, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox6, x: 1, y: 16, width: 1.5, height: 1.5, grid: 12)
        container.addSubViewGrid(view: squareBox7, x: 1, y: 19, width: 1.5, height: 1.5, grid: 12)
        self.view.addSubViewGrid(view: button, x: 2.5, y: 10, width: 7, height: 1, grid: 12)
        
      //  self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.onPressTap)))
    }
    
//    func didAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        performSegue(withIdentifier: "codeCovid", sender: nil)
//    }
//    @objc func onPressTap(sender: UITapGestureRecognizer) {
//        didAppear(true)
//    }

class SymptomesViewController: UIViewController {

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
}       
