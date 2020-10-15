import UIKit

class DashboardViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pink = UIColor(hex: "#FDA3A3ff")
        let grey = UIColor(hex: "#DDE6E7ff")
        let green = UIColor(hex: "#22A5A7ff")
        let lightGreen = UIColor(hex: "#8CD9C0ff")
        let orange = UIColor(hex: "#F5AE6Dff")
        let red = UIColor(hex: "#F84C4Cff")
        
        
        let navigation = UIView()
        let track = UIView()
        let trackText = UILabel()
        let trackImage = UIImageView()
        let code = UIView()
        let codeText = UILabel()
        let codeImage = UIImageView()
        let stateContainer = UIView()
        let state = UILabel()
        let info = UILabel()
        let qr = UIView()
        let qrImage = UIImageView()
        let qrText = UILabel()
        let container = UIView()
        let covid = UIView()
        let covidText = UILabel()
        let covidImage = UIImageView()
        
        let logoutImage = UIImageView()
        logoutImage.image = UIImage(named: "Deconnexion.png")
        
        let aboutImage = UIImageView()
        aboutImage.image = UIImage(named: "FAQ.png")

        let accountImage = UIImageView()
        accountImage.image = UIImage(named: "Profile.png")
        
        let logo = UIImageView()
        logo.image = UIImage(named: "LOGO.png")
        
        
        state.text = "Je suis sain !"
        state.font = UIFont.systemFont(ofSize: 40, weight: .bold)
        state.textColor = .white
        state.textAlignment = .center
        
        info.text = "Plus d'informations >>"
        info.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        info.textColor = .white
        info.textAlignment = .center
        
        trackText.text = "Se faire dépister"
        trackText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        trackText.textColor = green
        trackText.textAlignment = .left
        
        trackImage.image = UIImage(named: "Dépistage.png")
        
        codeText.text = "Rentrer son\nCode Covid"
        codeText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        codeText.numberOfLines = 0
        codeText.textColor = green
        codeText.textAlignment = .left
        
        codeImage.image = UIImage(named: "Code COVID.png")
        
        covidText.text = "Ai-je le\nCOVID"
        covidText.font = UIFont.systemFont(ofSize: 25, weight: .bold)
        covidText.numberOfLines = 0
        covidText.textColor = green
        covidText.textAlignment = .center
        
        covidImage.image = UIImage(named: "symptomes.png")
        
        qrText.text = "QR code"
        qrText.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        qrText.textColor = .black
        qrText.textAlignment = .center
        
        qrImage.image = UIImage(named: "QR CODE NOIR")
        
        container.layer.cornerRadius = 40
        track.layer.cornerRadius = 20
        code.layer.cornerRadius = 20
        qr.layer.cornerRadius = 20
        stateContainer.layer.cornerRadius = 20
        covid.layer.cornerRadius = 20
        
        track.backgroundColor = .white
        code.backgroundColor = .white
        qr.backgroundColor = .white
        covid.backgroundColor = .white
        
        self.view.addSubViewGrid(view: container, x: 0, y: 2, width: 12, height: 10, grid: 12)
        
        self.view.addSubViewGrid(view: navigation, x: 0, y: 0, width: 12, height: 2, grid: 12)
        navigation.addSubViewGrid(view: logoutImage, x: 10, y: 5, width: 1.5, height: 4.5, grid: 12)
        navigation.addSubViewGrid(view: aboutImage, x: 8.25, y: 5, width: 1.5, height: 4.5, grid: 12)
        navigation.addSubViewGrid(view: accountImage, x: 6.5, y: 5, width: 1.5, height: 4.5, grid: 12)
        navigation.addSubViewGrid(view: logo, x: 1, y: 5, width: 3.5, height: 4.5, grid: 12)
        
        container.addSubViewGrid(view: stateContainer, x: 1, y: 1, width: 10, height: 2, grid: 12)
        stateContainer.addSubViewGrid(view: state, x: 0, y: 0, width: 2, height: 1, grid: 2)
        stateContainer.addSubViewGrid(view: info, x: 0, y: 0.7, width: 2, height: 1, grid: 2)
        container.addSubViewGrid(view: track, x: 1, y: 3.25, width: 10, height: 2, grid: 12)
        track.addSubViewGrid(view: trackText, x: 0.2, y: 1, width: 2, height: 1, grid: 3)
        track.addSubViewGrid(view: trackImage, x: 2.25, y: 0.75, width: 0.5, height: 1.5, grid: 3)
        container.addSubViewGrid(view: code, x: 1, y: 5.5, width: 10, height: 2, grid: 12)
        code.addSubViewGrid(view: codeText, x: 0.2, y: 0, width: 2, height: 3, grid: 3)
        code.addSubViewGrid(view: codeImage, x: 2.25, y: 0.75, width: 0.5, height: 1.5, grid: 3)
        container.addSubViewGrid(view: qr, x: 1, y: 7.75, width: 4.75, height: 2.5, grid: 12)
        qr.addSubViewGrid(view: qrText, x: 3, y: 5, width: 6, height: 2, grid: 12)
        qr.addSubViewGrid(view: qrImage, x: 1, y: 1, width: 10, height: 10, grid: 12)
        container.addSubViewGrid(view: covid, x: 6.25, y: 7.75, width: 4.75, height: 2.5, grid: 12)
        covid.addSubViewGrid(view: covidText, x: 0, y: 0.2, width: 2, height: 1, grid: 2)
        covid.addSubViewGrid(view: covidImage, x: 0.4, y: 0.8, width: 1.25, height: 1.3, grid: 2)
        
        container.setGradientBackground(colorOne: lightGreen!, colorTwo: green!)
    }
}
