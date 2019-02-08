//
//  CompetitiveEvents.swift
//  In the Know FBLA
//
//  Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class CompetitiveEvents: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Hideall()
        RandomCompetitiveQuestions()
    }
    
    @IBOutlet var Competitivelabel: UILabel!
    
    @IBOutlet var Competitiveb1: UIButton!
    @IBOutlet var Competitiveb2: UIButton!
    @IBOutlet var Competitiveb3: UIButton!
    @IBOutlet var Competitiveb4: UIButton!
    
    @IBOutlet var Next: UIButton!
    @IBOutlet var LabelEnd: UILabel!
    
    var CorrectAnswer = String()
    
    
    func RandomCompetitiveQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
           
            
        case 1:
            Competitivelabel.text = "In 3D Animation, the project can not excede how many minutes in length?"
            Competitiveb1.setTitle("1", for: UIControlState.normal)
            Competitiveb2.setTitle("2", for: UIControlState.normal)
            Competitiveb3.setTitle("3", for: UIControlState.normal)
            Competitiveb4.setTitle("5", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 2:
            Competitivelabel.text = "Which of these events consists of two parts?"
            Competitiveb1.setTitle("Coding & Programming", for: UIControlState.normal)
            Competitiveb2.setTitle("Business Plan", for: UIControlState.normal)
            Competitiveb3.setTitle("Community Service Project", for: UIControlState.normal)
            Competitiveb4.setTitle("Database Design and Applications", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            Competitivelabel.text = "Which event requires all participants to be in grade 12?"
            Competitiveb1.setTitle("Job Interview", for: UIControlState.normal)
            Competitiveb2.setTitle("Management Decision Making", for: UIControlState.normal)
            Competitiveb3.setTitle("Introduction to Business", for: UIControlState.normal)
            Competitiveb4.setTitle("Business Financial Plan", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 4:
            Competitivelabel.text = "Which of the following does not require an objective test?"
            Competitiveb1.setTitle("Business Communication", for: UIControlState.normal)
            Competitiveb2.setTitle("Accounting", for: UIControlState.normal)
            Competitiveb3.setTitle("Introduction to Financial Math", for: UIControlState.normal)
            Competitiveb4.setTitle("3-D Animation", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 5:
            Competitivelabel.text = "Which on of these is a team event?"
            Competitiveb1.setTitle("Accounting", for: UIControlState.normal)
            Competitiveb2.setTitle("Marketing", for: UIControlState.normal)
            Competitiveb3.setTitle("Personal Finance", for: UIControlState.normal)
            Competitiveb4.setTitle("Business Law", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 6:
            Competitivelabel.text = "Which of these does not require presenting to judges?"
            Competitiveb1.setTitle("Public Service Announcement", for: UIControlState.normal)
            Competitiveb2.setTitle("Impromptu Speaking", for: UIControlState.normal)
            Competitiveb3.setTitle("Public Speaking", for: UIControlState.normal)
            Competitiveb4.setTitle("Partnership with Business Project", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 7:
            Competitivelabel.text = "Which of these tests is 60 minutes in length?"
            Competitiveb1.setTitle("Introduction to Business Communications", for: UIControlState.normal)
            Competitiveb2.setTitle("Introduction to Business Procedures", for: UIControlState.normal)
            Competitiveb3.setTitle("Computer Applications", for: UIControlState.normal)
            Competitiveb4.setTitle("Business Calculations", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 8:
            Competitivelabel.text = "Which of these requires a test being taken before the State Leadership Conference?"
            Competitiveb1.setTitle("Future Business Leader", for: UIControlState.normal)
            Competitiveb2.setTitle("Banking and Financial Systems", for: UIControlState.normal)
            Competitiveb3.setTitle("Health Care Administration", for: UIControlState.normal)
            Competitiveb4.setTitle("Introduction to FBLA", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 9:
            Competitivelabel.text = "In Impromptu Speaking how many minutes does the speech have to be?"
            Competitiveb1.setTitle("10", for: UIControlState.normal)
            Competitiveb2.setTitle("8", for: UIControlState.normal)
            Competitiveb3.setTitle("6", for: UIControlState.normal)
            Competitiveb4.setTitle("4", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 10:
            Competitivelabel.text = "Which of these events have competencies including probability, consumer credit, and data analysis?"
            Competitiveb1.setTitle("Introduction to Financial Math", for: UIControlState.normal)
            Competitiveb2.setTitle("Journalism", for: UIControlState.normal)
            Competitiveb3.setTitle("Hospitality Management", for: UIControlState.normal)
            Competitiveb4.setTitle("Future Business Leade", for: UIControlState.normal)
            CorrectAnswer = "1"
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
    @IBAction func Competitiveb1action(_ sender: Any) {
        UnhideLabel()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Competitiveb2action(_ sender: Any) {
        UnhideLabel()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Competitiveb3action(_ sender: Any) {
        UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
           LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Competitiveb4action(_ sender: Any) {
        UnhideLabel()
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
        RandomCompetitiveQuestions()
        Hideall()
    }
    
    
    
}


