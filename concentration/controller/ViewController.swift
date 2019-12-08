//
//  ViewController.swift
//  concentration
//
//  Created by Nauman Bajwa on 12/6/19.
//  Copyright © 2019 Nauman Bajwa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var score : Int =  0 {
        didSet {
            flipCountLabel.text = "Flips: \(score)"
        }
    }
    var emojiChoices : Array<String> = ["🥰","🥰","👻","👻","😘","😘","😂","😂","👍","👍","🤝","🤝","🤣","🤣","😎","😎","🤓","🤓","😱","😱","🥵","🥵","😈","😈","🤗","🤗"]
    @IBOutlet weak var flipCountLabel: UILabel!
    
    @IBOutlet var cardButtons: [UIButton]!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchCard(_ sender: UIButton) {
        let cardNumber = cardButtons.firstIndex(of: sender)!
        flipCard( withEmoji: emojiChoices[cardNumber], on: sender)
        score += 1
        print("card Number: \(cardNumber)")
    }
    
    
    // MARK: Function flipcard
    func flipCard(withEmoji emoji: String, on Button: UIButton){
        if Button.currentTitle == emoji {
            Button.setTitle("", for: .normal)
            Button.backgroundColor = #colorLiteral(red: 0.09466163748, green: 0.1357369357, blue: 0.1402019981, alpha: 1)
            
        }else{
            Button.setTitle(emoji, for: .normal)
            Button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
}

