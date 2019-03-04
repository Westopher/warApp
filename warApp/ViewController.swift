//
//  ViewController.swift
//  warApp
//
//  Created by West Kraemer on 3/4/19.
//  Copyright © 2019 West Kraemer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        //randomize cards
        let randomLeft = Int.random(in: 2...14)
        let randomRight = Int.random(in: 2...14)
        
        //assign randomcards to views
        leftImageView.image = UIImage(named: "card\(randomLeft)")
        rightImageView.image = UIImage(named: "card\(randomRight)")
        
        //compare cards and update scores
        if randomLeft > randomRight {
            leftScore = leftScore + 1
            leftScoreLabel.text = "\(leftScore)"
        } else if randomRight > randomLeft {
            rightScore = rightScore + 1
            rightScoreLabel.text = "\(rightScore)"
        } else if randomRight == randomLeft {
            print("draw")
        }
    }
    
}

