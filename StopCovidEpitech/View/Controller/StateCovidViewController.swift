//
//  StateCovidViewController.swift
//  StopCovidEpitech
//
//  Created by Samuel on 13/10/2020.
//

import UIKit

class StateCovidViewController: UIViewController {
    
    var state = (
        name: "MOYEN",
        y: 3.5,
        height: 2,
        cty: 2,
        csty: 4.5,
        containerHeight: 12,
        trackcontainerY: 13
    )
    
//    var state = (
//        name: "FORT",
//        y: 2.5,
//        height: 1,
//        cty: 1,
//        csty: 4,
//        containerHeight: 10,
//        trackcontainerY: 9.5
//    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let orange = UIColor(hex: "#F6D694ff")
        let darkOrange = UIColor(hex: "#FFAB5Dff")
        let red = UIColor(hex: "#FF5963ff")
        let lightRed = UIColor(hex: "#FF8D74ff")
        
        let container = UIView()
        let track = UIView()
        let trackImage = UIImageView()
        let head = UIView()
        let content = UIView()
        let headText = UILabel()
        let stateText = UILabel()
        let mostFrequent = UILabel()
        let mostFrequentText = UILabel()
        let leastFrequent = UILabel()
        let leastFrequentText = UILabel()
        let contentText = UILabel()
        let contentSecondtText = UILabel()
        let warnText = UILabel()
        let trackText = UILabel()
        
        headText.text = "Risque"
        headText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        headText.textAlignment = .center
        
        stateText.text = state.name
        stateText.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        stateText.textAlignment = .center
        
        mostFrequent.text = "Symptômes les plus fréquents :"
        mostFrequent.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        mostFrequent.textAlignment = .left
        
        mostFrequentText.numberOfLines = 0
        mostFrequentText.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        mostFrequentText.textAlignment = .left
        
        leastFrequentText.numberOfLines = 0
        leastFrequentText.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        leastFrequentText.textAlignment = .left
        
        leastFrequent.text = "Symptômes les moins fréquents :"
        leastFrequent.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        leastFrequent.textAlignment = .left
        
        contentText.numberOfLines = 0
        contentText.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        contentText.textAlignment = .center
        
        contentSecondtText.numberOfLines = 0
        contentSecondtText.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        contentSecondtText.textAlignment = .center
        
        warnText.numberOfLines = 0
        warnText.font = UIFont.systemFont(ofSize: 15, weight: .bold)
        warnText.textAlignment = .center
        warnText.textColor = red
        
        trackText.text = "Se faire dépister"
        trackText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        trackText.textAlignment = .left
        trackText.textColor = red
        
        trackImage.image = UIImage(named: "Dépistage.png")
        
        container.layer.cornerRadius = 40
        track.layer.cornerRadius = 40
        head.layer.cornerRadius = 20
        content.layer.cornerRadius = 20
        
        head.backgroundColor = .white
        content.backgroundColor = .white
        track.backgroundColor = .white
        
        if state.name == "MOYEN" {
            
            headText.textColor = darkOrange
            stateText.textColor = darkOrange
            mostFrequentText.text = "Fièvre \n\nFatigue"
            leastFrequentText.text = "Perte de l'odorat ou du gout"
            contentText.text = "Les individus présentant des symptomes légers, mais qui sont par ailleurs en bonne santé, doivent se soigner chez eux."
            contentSecondtText.text = "En moyenne, l'apparition des symptomes chez une personne infectée par le virus prend cinq à six jours. Cependant, ce délai peut s'étendre jusqu'a quatorze jours."
            
        } else if state.name == "FORT" {
            
            container.backgroundColor = red
            headText.textColor = red
            stateText.textColor = red
            mostFrequentText.text = "Fièvre"
            leastFrequentText.text = "Sensation d'opression ou douleur au niveau de la poitrine"
            contentText.text = "A la vue de vos symptomes nous pouvons vous conseiller de :"
            contentSecondtText.text = "Avant de vous rendre chez votre médecin ou dans un établissement de santé, contactez-les toujours par téléphone."
            warnText.text = "consultez immédiatement un professionnel de santé"
            
        }
        
        self.view.addSubViewGrid(view: container, x: 0, y: 2, width: 12, height: CGFloat(state.containerHeight), grid: 12)
        
        container.addSubViewGrid(view: head, x: 3, y: 0.5, width: 6, height: 2.5, grid: 12)
        container.addSubViewGrid(view: content, x: 1, y: 2, width: 10, height: 7, grid: 12)
        container.addSubViewGrid(view: track, x: 1, y:CGFloat(state.trackcontainerY), width: 10, height: 2, grid: 12)
        
        head.addSubViewGrid(view: headText, x: 3, y: 1, width: 6, height: 2.5, grid: 12)
        head.addSubViewGrid(view: stateText, x: 1, y: 4, width: 10, height: 2.5, grid: 12)
        
        track.addSubViewGrid(view: trackText, x: 1, y:3, width: 10, height: 6, grid: 12)
        track.addSubViewGrid(view: trackImage, x: 9, y:3, width: 2, height: 5, grid: 12)
        
        content.addSubViewGrid(view: mostFrequent, x: 1, y: 1, width: 10, height: 1, grid: 12)
        content.addSubViewGrid(view: mostFrequentText, x: 2, y: 2, width: 10, height: CGFloat(state.height), grid: 12)
        content.addSubViewGrid(view: contentText, x: 1, y: CGFloat(state.cty), width: 10, height: 10, grid: 12)
        content.addSubViewGrid(view: contentSecondtText, x: 1, y: CGFloat(state.csty), width: 10, height: 10, grid: 12)
        content.addSubViewGrid(view: warnText, x: 1, y: 2.2, width: 10, height: 10, grid: 12)
        content.addSubViewGrid(view: leastFrequent, x: 1, y: CGFloat(state.y), width: 10, height: 2, grid: 12)
        
        leastFrequent.addSubViewGrid(view: leastFrequentText, x: 1, y: 6, width: 10, height: 12, grid: 12)
        
        if state.name == "MOYEN" {
            
            container.setGradientBackground(colorOne: orange!, colorTwo: darkOrange!)
            
        } else if state.name == "FORT" {
            
            container.setGradientBackground(colorOne: lightRed!, colorTwo: red!)
            
        }
    }
}
