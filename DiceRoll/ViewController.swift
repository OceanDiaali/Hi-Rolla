//
//  ViewController.swift
//  DiceRoll
//
//  Created by Apple on 10/01/2018.
//  Copyright © 2018 gigabyt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var dieSumDisplay: UILabel!
    @IBOutlet weak var diceOne: UIImageView!
    @IBOutlet weak var diceTwo: UIImageView!
    
    //var rand = Int(arc4random_uniform(6) + 1)
    var diceOneVal: Int = 0
    var diceTwoVal: Int = 0
    var dieSum: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //var rand = Int(arc4random_uniform(6) + 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*func sumOfDie(){
        dieSum = diceOneVal + diceTwoVal
    }*/
    
    func rollDiceOne(){
        let rand = Int(arc4random_uniform(6) + 1)
        diceOneVal = rand
        diceOne.image = UIImage(named: "dice\(diceOneVal)")
    }
    func rollDiceTwo(){
        let rand = Int(arc4random_uniform(6) + 1)
        diceTwoVal = rand
        diceTwo.image = UIImage(named: "dice\(diceTwoVal)")
    }
    
    @IBAction func rollButton(_ sender: UIButton)
    {
        rollDiceOne()
        rollDiceTwo()
        dieSum = diceOneVal + diceTwoVal

        //diceOne.image = UIImage(named: "dice\(rand)")
        //diceTwo.image = UIImage(named: "dice\(rand)")
        dieSumDisplay.text = "\(dieSum)"
        if dieSum == 7 || dieSum == 11 {
            dieSumDisplay.text = "\(dieSum) Win!"
        }
        if dieSum == 2 || dieSum == 3 || dieSum == 12{
            dieSumDisplay.text = "\(dieSum) Lose!"
        }
    }// end of roll button
    

}//end of class

