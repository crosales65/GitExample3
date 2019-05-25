//
//  ViewController.swift
//  GitExample3
//
//  Created by Carlos on 5/19/19.
//  Copyright © 2019 oSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARk: - Outlets
    
    @IBOutlet weak var pressButton: UIButton!
    @IBOutlet weak var faceLabel: UILabel!
    @IBOutlet weak var colorFondoButton: UIButton!
    @IBOutlet weak var fechaLabel: UILabel!
    
    // MARK: - variables
    
    private var tempVar = true

    let fechaActual = Date()
    let fechaFormato = DateFormatter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        faceLabel.isHidden = true
        // faceLabel.backgroundColor = .green
        fechaLabel.text = DateFormatter.localizedString(from: NSDate() as Date, dateStyle: .medium, timeStyle: .medium)
    }

    @IBAction func pressButtonAction(_ sender: UIButton) {
        faceLabel.isHidden = !faceLabel.isHidden
    }
    
    @IBAction func colorFondoButtonAction(_ sender: UIButton) {
        if tempVar {
            // faceLabel.backgroundColor = .red
            view.backgroundColor = .red
        } else {
            // faceLabel.backgroundColor = .green
            view.backgroundColor = .white
        }
        tempVar = !tempVar
    }
    
}

