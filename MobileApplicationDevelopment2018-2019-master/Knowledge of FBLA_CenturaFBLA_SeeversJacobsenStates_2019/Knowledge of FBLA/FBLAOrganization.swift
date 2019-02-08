//
//  FBLAOrganization.swift
//  In the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class FBLAOrganization: UIViewController {
    
    @IBOutlet var Organizationlabel: UILabel!
    
    @IBOutlet var Organizationb1: UIButton!
    @IBOutlet var Organizationb2: UIButton!
    @IBOutlet var Organizationb3: UIButton!
    @IBOutlet var Organizationb4: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var Next: UIButton!
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomOrganizationQuestions()
        Hideall()
    }
    func RandomOrganizationQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Organizationlabel.text = "What starts each of the FBLA Creed guidelines?"
            Organizationb1.setTitle("I will", for: UIControlState.normal)
            Organizationb2.setTitle("I trust", for: UIControlState.normal)
            Organizationb3.setTitle("I believe", for: UIControlState.normal)
            Organizationb4.setTitle("I hope", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 2:
            Organizationlabel.text = "The national FBLA Bylaws contains this number of Articles:"
            Organizationb1.setTitle("3", for: UIControlState.normal)
            Organizationb2.setTitle("6", for: UIControlState.normal)
            Organizationb3.setTitle("9", for: UIControlState.normal)
            Organizationb4.setTitle("12", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 3:
            Organizationlabel.text = "Which one of the following statements is part of the FBLA Code of Ethics?"
            Organizationb1.setTitle("I will willingly accept duties.", for: UIControlState.normal)
            Organizationb2.setTitle("I will be honest and sincere.", for: UIControlState.normal)
            Organizationb3.setTitle("I will be sincere.", for: UIControlState.normal)
            Organizationb4.setTitle("I will abide by the rules of my adviser.", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 4:
            Organizationlabel.text = "The FBLA goal is to strengthen the confidence of students in themselves and their:"
            Organizationb1.setTitle("leadership", for: UIControlState.normal)
            Organizationb2.setTitle("school", for: UIControlState.normal)
            Organizationb3.setTitle("work", for: UIControlState.normal)
            Organizationb4.setTitle("careers", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 5:
            Organizationlabel.text = "According to the Chapter Management Handbook, what chapter officer plans public relations activities for the chapter?"
            Organizationb1.setTitle("Secretary", for: UIControlState.normal)
            Organizationb2.setTitle("Reporter", for: UIControlState.normal)
            Organizationb3.setTitle("Vice President", for: UIControlState.normal)
            Organizationb4.setTitle("President", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 6:
            Organizationlabel.text = "The parliamentarian's candle is what color?"
            Organizationb1.setTitle("Red", for: UIControlState.normal)
            Organizationb2.setTitle("Gray", for: UIControlState.normal)
            Organizationb3.setTitle("Blue", for: UIControlState.normal)
            Organizationb4.setTitle("White", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 7:
            Organizationlabel.text = "What color is the reporter's candle?"
            Organizationb1.setTitle("Green", for: UIControlState.normal)
            Organizationb2.setTitle("Violet", for: UIControlState.normal)
            Organizationb3.setTitle("Yellow", for: UIControlState.normal)
            Organizationb4.setTitle("Orange", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 8:
            Organizationlabel.text = "What starts each of the FBLA Code of Ethics guidelines?"
            Organizationb1.setTitle("I will", for: UIControlState.normal)
            Organizationb2.setTitle("I trust", for: UIControlState.normal)
            Organizationb3.setTitle("I believe", for: UIControlState.normal)
            Organizationb4.setTitle("I hope", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 9:
            Organizationlabel.text = "How much are state dues in Nebraska? (Not Including National Dues)"
            Organizationb1.setTitle("$4", for: UIControlState.normal)
            Organizationb2.setTitle("$5", for: UIControlState.normal)
            Organizationb3.setTitle("$6", for: UIControlState.normal)
            Organizationb4.setTitle("$7", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 10:
            Organizationlabel.text = "How much are National dues?"
            Organizationb1.setTitle("$4", for: UIControlState.normal)
            Organizationb2.setTitle("$5", for: UIControlState.normal)
            Organizationb3.setTitle("$6", for: UIControlState.normal)
            Organizationb4.setTitle("$7", for: UIControlState.normal)
            CorrectAnswer = "3"
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
    @IBAction func Organizationb1action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Organizationb2action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Organizationb3action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Organizationb4action(_ sender: Any) {UnhideLabel()
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
        RandomOrganizationQuestions()
        Hideall()
    }
    
    
}


