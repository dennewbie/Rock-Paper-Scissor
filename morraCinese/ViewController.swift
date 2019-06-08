//
//  ViewController.swift
//  morraCinese
//
//  Created by Denny Caruso on 14/10/2018.
//  Copyright © 2018 Denny Caruso. All rights reserved.
//

import UIKit
import Darwin

class ViewController: UIViewController {
    
    var randomNumber = Int.random(in: 1...3)
    var scoree:Int=0

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
        // Do any additional setup after loading the view, typically from a nib.

    @IBOutlet weak var opponent: UILabel!
    @IBOutlet weak var randomChoice: UILabel!
    @IBOutlet weak var ris: UILabel!
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorButton: UIButton!
    @IBOutlet weak var score: UILabel!
    
    
    @IBAction func rock(_ sender: UIButton) {
        if randomNumber==1{
            ris.text="You draw"
            opponent.text = "Your opponent: 👊🏻"
        }else if randomNumber==2{
            ris.text="You lost"
            scoree-=1
            opponent.text = "Your opponent: 🤚🏻"
        }else if randomNumber==3{
            ris.text="You win"
            scoree+=1
            opponent.text = "Your opponent: ✌🏻"
        }
        rockButton.isEnabled=false
        paperButton.isEnabled=false
        scissorButton.isEnabled=false
        score.text="Score: \(scoree)"
    }
        
    @IBAction func paper(_ sender: UIButton) {
        if randomNumber==1{
            ris.text="You win"
            scoree+=1
            opponent.text = "Your opponent: 👊🏻"
        }else if randomNumber==2{
            ris.text="You draw"
             opponent.text = "Your opponent: 🤚🏻"
        }else if randomNumber==3{
            ris.text="You lost"
            scoree-=1
            opponent.text = "Your opponent: ✌🏻"
        }
        rockButton.isEnabled=false
        paperButton.isEnabled=false
        scissorButton.isEnabled=false
        score.text="Score: \(scoree)"
    }
    @IBAction func scissor(_ sender: UIButton) {
       
        if randomNumber==1{
            ris.text="You lost"
            scoree-=1
             opponent.text = "Your opponent: 👊🏻"
        }else if randomNumber==2{
            ris.text="You win"
            scoree+=1
            opponent.text = "Your opponent: 🤚🏻"
        }else if randomNumber==3{
            ris.text="You draw"
            opponent.text = "Your opponent: ✌🏻"
        }
        rockButton.isEnabled=false
        paperButton.isEnabled=false
        scissorButton.isEnabled=false
        score.text="Score: \(scoree)"
        
    }
    @IBAction func newmatch(_ sender: Any) {
         randomNumber = Int.random(in: 1...3)
        rockButton.isEnabled=true
        paperButton.isEnabled=true
        scissorButton.isEnabled=true
            opponent.text="Please hit a button"
        
    }
}

