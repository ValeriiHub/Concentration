//
//  ViewController.swift
//  Concentration
//
//  Created by Valerii D on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var flipCount = 0 {
        didSet {
            flipCounLabel.text = "Flips: \(flipCount)"
        }
    }
    
    var emojiChoices = ["👻", "🎃", "👻", "🎃"]
    
    @IBOutlet var cardButtons: [UIButton]!
    
    @IBOutlet var flipCounLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.firstIndex(of: sender) {
            flipCard(withEmoji: emojiChoices[cardNumber], on: sender)
        } else {
            print("chosen card was not in cardButtons")
        }
    }
    
    
    func flipCard(withEmoji emoji: String, on button: UIButton) {
        
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        } else {
            button.setTitle(emoji, for: .normal)
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
}

