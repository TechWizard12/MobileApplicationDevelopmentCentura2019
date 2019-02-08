//
//  FBLAHistory.swift
//  In the Know FBLA
//
//  Created by CCreated by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class FBLAHistory: UIViewController{
    @IBOutlet var Historylabel: UILabel!
    
    @IBOutlet var Historyb1: UIButton!
    @IBOutlet var Historyb2: UIButton!
    @IBOutlet var Historyb3: UIButton!
    @IBOutlet var Historyb4: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var Next: UIButton!
    
    var CorrectAnswer = String()
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomHistoryQuestions()
        Hideall()
    }
    func RandomHistoryQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Historylabel.text = "When was the FBLA concept first developed?"
            Historyb1.setTitle("1960", for: UIControlState.normal)
            Historyb2.setTitle("1952", for: UIControlState.normal)
            Historyb3.setTitle("1945", for: UIControlState.normal)
            Historyb4.setTitle("1937", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 2:
            Historylabel.text = "When was the first high school chapter chartered?"
            Historyb1.setTitle("March 3, 1960", for: UIControlState.normal)
            Historyb2.setTitle("March 3, 1937", for: UIControlState.normal)
            Historyb3.setTitle("February 3, 1952", for: UIControlState.normal)
            Historyb4.setTitle("February 3, 1942", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            Historylabel.text = "What branch of FBLA was created in 1958?"
            Historyb1.setTitle("PBA", for: UIControlState.normal)
            Historyb2.setTitle("PBL", for: UIControlState.normal)
            Historyb3.setTitle("PBE", for: UIControlState.normal)
            Historyb4.setTitle("PBU", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 4:
            Historylabel.text = "What year was FBLA's postsecondary division, Phi Beta Lambda, created?"
            Historyb1.setTitle("1955", for: UIControlState.normal)
            Historyb2.setTitle("1957", for: UIControlState.normal)
            Historyb3.setTitle("1958", for: UIControlState.normal)
            Historyb4.setTitle("1952", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 5:
            Historylabel.text = "Which state became the first with an FBLA Chapter?"
            Historyb1.setTitle("Iowa", for: UIControlState.normal)
            Historyb2.setTitle("Nebraska", for: UIControlState.normal)
            Historyb3.setTitle("Missouri", for: UIControlState.normal)
            Historyb4.setTitle("Kansas", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 6:
            Historylabel.text = "How many divisions of FBLA are there?"
            Historyb1.setTitle("2", for: UIControlState.normal)
            Historyb2.setTitle("3", for: UIControlState.normal)
            Historyb3.setTitle("4", for: UIControlState.normal)
            Historyb4.setTitle("5", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 7:
            Historylabel.text = "When was the Alumni Division renamed to the Professional Division?"
            Historyb1.setTitle("1989", for: UIControlState.normal)
            Historyb2.setTitle("1970", for: UIControlState.normal)
            Historyb3.setTitle("1983", for: UIControlState.normal)
            Historyb4.setTitle("1976", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 8:
            Historylabel.text = "When was the FBLA-Middle Division formed?"
            Historyb1.setTitle("1992", for: UIControlState.normal)
            Historyb2.setTitle("1994", for: UIControlState.normal)
            Historyb3.setTitle("1996", for: UIControlState.normal)
            Historyb4.setTitle("1998", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 9:
            Historylabel.text = "Who created the FBLA concept?"
            Historyb1.setTitle("Dr. John", for: UIControlState.normal)
            Historyb2.setTitle("Dr. Anderson", for: UIControlState.normal)
            Historyb3.setTitle("Dr. Hamden", for: UIControlState.normal)
            Historyb4.setTitle("Dr. Gregory", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 10:
            Historylabel.text = "When did the National Council for Business Education start sponsoring FBLA?"
            Historyb1.setTitle("1935", for: UIControlState.normal)
            Historyb2.setTitle("1940", for: UIControlState.normal)
            Historyb3.setTitle("1945", for: UIControlState.normal)
            Historyb4.setTitle("1950", for: UIControlState.normal)
            CorrectAnswer = "2"
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
    @IBAction func Historyb1action(_ sender: Any)
        {UnhideLabel()
            if (CorrectAnswer == "1"){
                LabelEnd.text = "You Are Correct"
                UnhideNext()
            }
            else{
                LabelEnd.text = "You Are Wrong"
                HideNext()
            }
        }
    
    @IBAction func Historyb2action(_ sender: Any)
        {UnhideLabel()
            if (CorrectAnswer == "2"){
                LabelEnd.text = "You Are Correct"
                UnhideNext()
            }
            else{
                LabelEnd.text = "You Are Wrong"
                HideNext()
            }
        }
    
    @IBAction func Historyb3action(_ sender: Any)
        {UnhideLabel()
            if (CorrectAnswer == "3"){
                LabelEnd.text = "You Are Correct"
                UnhideNext()
            }
            else{
                LabelEnd.text = "You Are Wrong"
                HideNext()
            }
        }
    
    @IBAction func Historyb4action(_ sender: Any) 
        {UnhideLabel()
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
    RandomHistoryQuestions()
    Hideall()
    }
}

