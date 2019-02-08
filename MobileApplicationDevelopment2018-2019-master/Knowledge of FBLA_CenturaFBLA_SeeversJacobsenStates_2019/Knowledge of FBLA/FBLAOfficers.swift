//
//  FBLAOfficers.swift
//  In the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class FBLAOfficers: UIViewController{
    
    @IBOutlet var Officerlabel: UILabel!

    @IBOutlet var Officerb1: UIButton!
    @IBOutlet var Officerb2: UIButton!
    @IBOutlet var Officerb3: UIButton!
    @IBOutlet var Officerb4: UIButton!
    
    @IBOutlet var Next: UIButton!
    @IBOutlet var LabelEnd: UILabel!
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomOfficerQuestions()
        Hideall()
    }
    func RandomOfficerQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Officerlabel.text = "According to the Chapter Management Handbook, what local chapter officer plans pulic relations activitie sfor the chapter?"
            Officerb1.setTitle("Reporter", for: UIControlState.normal)
            Officerb2.setTitle("Secretary", for: UIControlState.normal)
            Officerb3.setTitle("Vice President", for: UIControlState.normal)
            Officerb4.setTitle("President", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            Officerlabel.text = "What is the maximum number of FBLA National Officers who may be elected from the same state chapter?"
            Officerb1.setTitle("4", for: UIControlState.normal)
            Officerb2.setTitle("3", for: UIControlState.normal)
            Officerb3.setTitle("2", for: UIControlState.normal)
            Officerb4.setTitle("1", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            Officerlabel.text = "The FBLA National President, Secretary, and Treasurer are elected by ballot vote by the:"
            Officerb1.setTitle("national voting delegates", for: UIControlState.normal)
            Officerb2.setTitle("regional voting delegates", for: UIControlState.normal)
            Officerb3.setTitle("state voting delegates", for: UIControlState.normal)
            Officerb4.setTitle("local voting delegates", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 4:
            Officerlabel.text = "What is the maximum number of FBLA national officers who may be elected from the same state chapter?"
            Officerb1.setTitle("1", for: UIControlState.normal)
            Officerb2.setTitle("2", for: UIControlState.normal)
            Officerb3.setTitle("3", for: UIControlState.normal)
            Officerb4.setTitle("4", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 5:
            Officerlabel.text = "All are duties of the Nebraska State President except:"
            Officerb1.setTitle("Preside at all meetings", for: UIControlState.normal)
            Officerb2.setTitle("Take pictures of state officer activities", for: UIControlState.normal)
            Officerb3.setTitle("Preside over and conduct delegate meetings", for: UIControlState.normal)
            Officerb4.setTitle("Serve on the FBLA Board of Directors ", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 6:
            Officerlabel.text = "All but the following need attached to the application for a national officer:"
            Officerb1.setTitle("Local Mayor Certification", for: UIControlState.normal)
            Officerb2.setTitle("Chapter Advisor Certification", for: UIControlState.normal)
            Officerb3.setTitle("State Advisor Certification ", for: UIControlState.normal)
            Officerb4.setTitle("School Administrator Certification", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 7:
            Officerlabel.text = "The deadline to apply for a national officer position is:"
            Officerb1.setTitle("March 15", for: UIControlState.normal)
            Officerb2.setTitle("April 15", for: UIControlState.normal)
            Officerb3.setTitle("May 15", for: UIControlState.normal)
            Officerb4.setTitle("June 15", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 8:
            Officerlabel.text = "How many national FBLA officers are there:"
            Officerb1.setTitle("8", for: UIControlState.normal)
            Officerb2.setTitle("9", for: UIControlState.normal)
            Officerb3.setTitle("10", for: UIControlState.normal)
            Officerb4.setTitle("11", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 9:
            Officerlabel.text = "Nebraska has how many state officer positions?"
            Officerb1.setTitle("5", for: UIControlState.normal)
            Officerb2.setTitle("6", for: UIControlState.normal)
            Officerb3.setTitle("7", for: UIControlState.normal)
            Officerb4.setTitle("8", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 10:
            Officerlabel.text = "All are duties of the Nebraska State Reproter except:"
            Officerb1.setTitle("Write letters and thank you notes", for: UIControlState.normal)
            Officerb2.setTitle("Send social media messages", for: UIControlState.normal)
            Officerb3.setTitle("Develop and present the Writer's Workshop at FLC", for: UIControlState.normal)
            Officerb4.setTitle("Keep accurate minutes of all meetings", for: UIControlState.normal)
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
    @IBAction func Officerb1action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Officerb2action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "2"){
            
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Officerb3action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Officerb4action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Next(_ sender: Any) {
        RandomOfficerQuestions()
        Hideall()
        
    }
    
    
}

