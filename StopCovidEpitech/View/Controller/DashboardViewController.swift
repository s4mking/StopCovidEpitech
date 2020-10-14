import UIKit

class DashboardViewController: UIViewController {

    var positif = "covid"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pink = UIColor(hex: "#FDA3A3ff")
        let grey = UIColor(hex: "#DDE6E7ff")
        let green = UIColor(hex: "#99F2D8ff")
        let orange = UIColor(hex: "#F5AE6Dff")
        let red = UIColor(hex: "#F84C4Cff")
        
        let track = UIView()
        let code = UIView()
        let state = UIView()
        let qr = UIView()
        let container = UIView()
        let covid = UIView()
        let scan = UIView()
        
        container.layer.cornerRadius = 40
        track.layer.cornerRadius = 20
        code.layer.cornerRadius = 20
        qr.layer.cornerRadius = 20
        state.layer.cornerRadius = 20
        covid.layer.cornerRadius = 20
        scan.layer.cornerRadius = 20
        
        
        track.backgroundColor = grey
        code.backgroundColor = grey
        qr.backgroundColor = pink
        covid.backgroundColor = pink
        if positif == "healthy" {
            state.backgroundColor = green
        } else if positif == "contact"  {
            state.backgroundColor = orange
        } else {
            state.backgroundColor = red
        }
        scan.backgroundColor = pink
        
        self.view.addSubViewGrid(view: container, x: 0, y: 0, width: 12, height: 12, grid: 12)
        container.addSubViewGrid(view: state, x: 1, y: 2.5, width: 10, height: 1.5, grid: 12)
        container.addSubViewGrid(view: track, x: 1, y: 4.25, width: 10, height: 1.5, grid: 12)
        container.addSubViewGrid(view: code, x: 1, y: 6, width: 10, height: 1.5, grid: 12)
        container.addSubViewGrid(view: qr, x: 1, y: 7.75, width: 4.5, height: 2, grid: 12)
        container.addSubViewGrid(view: covid, x: 6.5, y: 7.75, width: 4.5, height: 2, grid: 12)
        container.addSubViewGrid(view: scan, x: 1, y: 10, width: 10, height: 1.5, grid: 12)
    }

}
