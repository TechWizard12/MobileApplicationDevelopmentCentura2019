//
//  Ribbons.swift
//  KIn the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class Ribbons: UIViewController{
    @IBOutlet var Ribbonlabel: UILabel!
    
    @IBOutlet var Ribbonb1: UIButton!
    @IBOutlet var Ribbonb2: UIButton!
    @IBOutlet var Ribbonb3: UIButton!
    @IBOutlet var Ribbonb4: UIButton!
    
    @IBOutlet var Next: UIButton!
    @IBOutlet var LabelEnd: UILabel!
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomRibbonQuestions()
        Hideall()
    }
    
    func RandomRibbonQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Ribbonlabel.text = "Unless otherwise stated the Nebraskas individual ribbon awards deadline is"
            Ribbonb1.setTitle("March 1", for: UIControlState.normal)
            Ribbonb2.setTitle("March 8", for: UIControlState.normal)
            Ribbonb3.setTitle("April 10", for: UIControlState.normal)
            Ribbonb4.setTitle("April 21", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
            
        case 2:
            Ribbonlabel.text = "The Seven Up Ribbon requires chapters to increase their membership over the previous year by"
            Ribbonb1.setTitle("5", for: UIControlState.normal)
            Ribbonb2.setTitle("7", for: UIControlState.normal)
            Ribbonb3.setTitle("10", for: UIControlState.normal)
            Ribbonb4.setTitle("12", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 3:
            Ribbonlabel.text = "One of the required activities to compete for a StepUp2Tech Ribbon is to:"
            Ribbonb1.setTitle("Implement a chapter social media committee", for: UIControlState.normal)
            Ribbonb2.setTitle("Register a member for broadcast journalism event", for: UIControlState.normal)
            Ribbonb3.setTitle("Utilize social media to promote your chapter each month", for: UIControlState.normal)
            Ribbonb4.setTitle("Create or maintain an FBLA Chapter Website", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 4:
            Ribbonlabel.text = "For the Connect with Bussiness Ribbon, the form should be emailed to the :"
            Ribbonb1.setTitle("Nebraska State FBLA Vice President", for: UIControlState.normal)
            Ribbonb2.setTitle("Nebraska State FBLA Secretary", for: UIControlState.normal)
            Ribbonb3.setTitle("Nebraska State FBLA President", for: UIControlState.normal)
            Ribbonb4.setTitle("Nebraska State FBLA Treasurer", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 5:
            Ribbonlabel.text = "If a chapter gives between $100-$499 to Nebraska FBLA Foundation Trust, they are considered a(n) ________ member:"
            Ribbonb1.setTitle("Associate", for: UIControlState.normal)
            Ribbonb2.setTitle("Director", for: UIControlState.normal)
            Ribbonb3.setTitle("President", for: UIControlState.normal)
            Ribbonb4.setTitle("Manager", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 6:
            Ribbonlabel.text = "To qualify for recognition for the Go Green Challenge, a chapter must complete ___________ activities in each of the categories provided."
            Ribbonb1.setTitle("1", for: UIControlState.normal)
            Ribbonb2.setTitle("2", for: UIControlState.normal)
            Ribbonb3.setTitle("3", for: UIControlState.normal)
            Ribbonb4.setTitle("4", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 7:
            Ribbonlabel.text = "How many reports must be completed in order to recieve recognition for a Sweepstakes Award?"
            Ribbonb1.setTitle("1", for: UIControlState.normal)
            Ribbonb2.setTitle("2", for: UIControlState.normal)
            Ribbonb3.setTitle("3", for: UIControlState.normal)
            Ribbonb4.setTitle("4", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 8:
            Ribbonlabel.text = "One section of the All State Quality Member section requires attendance at a mininume of ___ chapter meeetings for a total of three points."
            Ribbonb1.setTitle("4", for: UIControlState.normal)
            Ribbonb2.setTitle("5", for: UIControlState.normal)
            Ribbonb3.setTitle("6", for: UIControlState.normal)
            Ribbonb4.setTitle("7", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 9:
            Ribbonlabel.text = "To receive an All State Quality Member Award, the applicant must have a point total of:"
            Ribbonb1.setTitle("50", for: UIControlState.normal)
            Ribbonb2.setTitle("75", for: UIControlState.normal)
            Ribbonb3.setTitle("100", for: UIControlState.normal)
            Ribbonb4.setTitle("125", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 10:
            Ribbonlabel.text = "Those deserving of the Community Service Award receive recognition at the:"
            Ribbonb1.setTitle("FLC", for: UIControlState.normal)
            Ribbonb2.setTitle("NFLC", for: UIControlState.normal)
            Ribbonb3.setTitle("SLC", for: UIControlState.normal)
            Ribbonb4.setTitle("NLC", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        default:
            break
        }
    }
    func HideLabel(){
        LabelEnd.isHidden = true
    }
    //Hide the label only
    
    func HideNext(){
        Next.isHidden = true
    }
    //Hide the button only
    func UnhideLabel(){
        LabelEnd.isHidden = false
    }
    //Unhide the label only
    func UnhideNext(){
        Next.isHidden = false
    }
    //Unhide the button only
    func Hideall(){
        LabelEnd.isHidden = true
        Next.isHidden = true
    }
    //Hide both
    func Unhideall(){
        LabelEnd.isHidden = false
        Next.isHidden = false
    }
    //Unhide both
    @IBAction func Ribbonb1action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Ribbonb2action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Ribbonb3action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Ribbonb4action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Next(_ sender: Any) {
        RandomRibbonQuestions()
        Hideall()
    }
    
    
}
