//
//  ViewController.swift
//  Cards
//
//  Created by Robin Keybs on 1/21/20.
//  Copyright © 2020 Robin Keybs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //The Images
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    //The Buttons
    @IBOutlet weak var leftScoreLabel: UILabel!
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    //Cpu and Player scores declaration
    var leftscore = 0
    var rightscore = 0
    
    //IBAction
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        //Randomize numbers to update image views
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        if leftNumber > rightNumber {
            //left wins
            leftscore += 1
            leftScoreLabel.text = String(leftscore)
        }
        else if leftNumber < rightNumber {
            //Right wins
            rightscore  += 1
            rightScoreLabel.text = String(rightscore)
        }
        else{
            //draw
        }
    }
    


}

