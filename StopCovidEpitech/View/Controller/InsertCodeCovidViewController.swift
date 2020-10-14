//
//  InsertCodeCovidViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 14/10/2020.
//

import UIKit

class InsertCodeCovidViewController: UIViewController {

    let titre = UILabel()
    let paragraphe = UILabel()
    let input = UIInputView()
    let subtitle = UILabel()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        titre.text = "Code Covid ?"
        titre.font = titre.font.withSize(22)
        titre.textAlignment = .center
        paragraphe.text="Votre code COVID vous est délivré à la suite d’un depistage effectué en laboratoire, il permet de mettre à jour votre statut."
        subtitle.text="Où se trouve mon code COVID ?"
        paragraphe.numberOfLines = 0
        paragraphe.lineBreakMode = NSLineBreakMode.byWordWrapping
        paragraphe.frame.size.width = CGFloat(MAXFLOAT)
        paragraphe.frame.size.height = CGFloat(MAXFLOAT)
        paragraphe.sizeToFit()
        paragraphe.textAlignment = .center
        titre.backgroundColor = .red
        paragraphe.backgroundColor = .blue
       
        
        let myTextField: UITextField = {
            let textField = UITextField()
            textField.backgroundColor = .lightGray //Just so you can see it
            textField.translatesAutoresizingMaskIntoConstraints = false
            return textField
        }()

        let myButton: UIButton = {
            let button = UIButton()
            button.setTitle("Press me", for: .normal)
            button.setTitleColor(UIColor.blue, for: .normal)
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()

        
        self.view.addSubViewGrid(view: titre, x: 1, y: 0, width: 10, height: 2, grid: 12)
        self.view.addSubViewGrid(view: paragraphe, x: 1, y: 2, width: 10, height: 3, grid: 12)
        self.view.addSubViewGrid(view: input, x: 1, y: 6, width: 10, height: 5, grid: 12)
        
        
        view.addSubview(myTextField)
           myTextField.widthAnchor.constraint(equalToConstant: 250).isActive = true
           myTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
           NSLayoutConstraint(item: myTextField, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
           NSLayoutConstraint(item: myTextField, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1, constant: -100).isActive = true

        view.addSubview(myButton)
           myButton.widthAnchor.constraint(equalToConstant: 250).isActive = true
           myButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
           NSLayoutConstraint(item: myButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0).isActive = true
           NSLayoutConstraint(item: myButton, attribute: .top, relatedBy: .equal, toItem: myTextField, attribute: .bottom, multiplier: 1, constant: 10).isActive = true

       //This sets the function for when the button is pressed
           myButton.addTarget(self, action: #selector(InsertCodeCovidViewController.myButtonPressed), for: .touchUpInside)
    }
    
    @objc func myButtonPressed() {

        print("dazdazdadzd")

    }

}
