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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        
        let randomLeft = Int.random(in: 2...14)
        let randomRight = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(randomLeft)")
        rightImageView.image = UIImage(named: "card\(randomRight)")
        
        
    }
    
}

