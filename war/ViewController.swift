//
//  ViewController.swift
//  war
//
//  Created by Y V R SAINATH on 7/10/17.
//  Copyright © 2017 Y V R SAINATH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var rightScoreLabel: UILabel!
    var rightScore = 0
    @IBOutlet weak var leftImageView: UIImageView!
    @IBOutlet weak var leftScoreLabel: UILabel!
    var leftScore = 0
    
    
    let cardNames = [ "card2", "card3", "card4", "card5", "card6","card7","card8","card9","card10","jack","queen","king","ace"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func dealTapped(_ sender: AnyObject) {
        
        //randomize left number from 0 to 12
        
        let leftNumber:Int = Int(arc4random_uniform(13))
        //set the left image
        leftImageView.image = UIImage(named: cardNames[leftNumber])
        
        
        let rightNumber:Int = Int(arc4random_uniform(13))
        //set the right image
        rightImageView.image = UIImage(named: cardNames[rightNumber])
        
        //comparing the cards and deciding who won
        
        if rightNumber < leftNumber {
        // left card wins
            leftScore += 1
            //updating the lable in UI
            leftScoreLabel.text = String(leftScore)
        }
        else if rightNumber == leftNumber{
        // its Tie
        }
        else{
        // Right card wins
            rightScore += 1
            //upadting the lable in UI
            rightScoreLabel.text = String(rightScore)
        }
    }
}

