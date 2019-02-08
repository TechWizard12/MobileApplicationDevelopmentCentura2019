//
//  Publications.swift
//  In the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class Publications: UIViewController{
    @IBOutlet var Publicationslabel: UILabel!
    
    @IBOutlet var Publicationsb1: UIButton!
    @IBOutlet var Publicationsb2: UIButton!
    @IBOutlet var Publicationsb3: UIButton!
    @IBOutlet var Publicationsb4: UIButton!

    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var Next: UIButton!
    
    var CorrectAnswer = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomPublicationsQuestions()
        Hideall()
    }
    func RandomPublicationsQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Publicationslabel.text = "Which one of the following awards is presented to FBLA Chapters at the National Fall Leadership Conference?"
            Publicationsb1.setTitle("Largest State Chapter in Attendance", for: UIControlState.normal)
            Publicationsb2.setTitle("Largest Increase in Local Chapter Membership", for: UIControlState.normal)
            Publicationsb3.setTitle("Largest Local Chapter in Attendance", for: UIControlState.normal)
            Publicationsb4.setTitle("Largest Local Chapter Membership", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 2:
            Publicationslabel.text = "The high school adviser newsletter is published three times during the school year and is named:"
            Publicationsb1.setTitle("FBLA Advisers' Newsletter", for: UIControlState.normal)
            Publicationsb2.setTitle("FBLA Advisors' Hotline", for: UIControlState.normal)
            Publicationsb3.setTitle("FBLA Advisers' Edge", for: UIControlState.normal)
            Publicationsb4.setTitle("FBLA Advisers' Guide", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 3:
            Publicationslabel.text = "Which of the following is included in the FBLA Chapter Management Handbook as a membership building idea?"
            Publicationsb1.setTitle("Membership Achievement Mania", for: UIControlState.normal)
            Publicationsb2.setTitle("90 Percent Classroom Participation Award", for: UIControlState.normal)
            Publicationsb3.setTitle("Current FBLA Recruitment Programs", for: UIControlState.normal)
            Publicationsb4.setTitle("Membership Madness Booth", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 4:
            Publicationslabel.text = "What is a publication distributed by FBLA?"
            Publicationsb1.setTitle("State Chapter Advisers' Handbook", for: UIControlState.normal)
            Publicationsb2.setTitle("FBLA Organizational Handbook", for: UIControlState.normal)
            Publicationsb3.setTitle("Local Chapter Advisers' Handbook", for: UIControlState.normal)
            Publicationsb4.setTitle("Chapter Management Handbook", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 5:
            Publicationslabel.text = "What is the name of the program that is an aggressive, self-directed, results-based business and leadership-program designed to complement academics while accelerating a student's leadership skills?"
            Publicationsb1.setTitle("Business Achievement Awards", for: UIControlState.normal)
            Publicationsb2.setTitle("Business Future Awards", for: UIControlState.normal)
            Publicationsb3.setTitle("Business Community Leadership Awards", for: UIControlState.normal)
            Publicationsb4.setTitle("Business Awards", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 6:
            Publicationslabel.text = "Tomorrow's Business Leader is published how many times each school year?"
            Publicationsb1.setTitle("1", for: UIControlState.normal)
            Publicationsb2.setTitle("2", for: UIControlState.normal)
            Publicationsb3.setTitle("3", for: UIControlState.normal)
            Publicationsb4.setTitle("4", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 7:
            Publicationslabel.text = "This is a website that is a comprehensive library of resources and news about FBLA:"
            Publicationsb1.setTitle("FBLA Connect", for: UIControlState.normal)
            Publicationsb2.setTitle("Connecting You and FBLA", for: UIControlState.normal)
            Publicationsb3.setTitle("It's All Connected", for: UIControlState.normal)
            Publicationsb4.setTitle("Connect to FBLA for You", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 8:
            Publicationslabel.text = "The FBLA Middle Level Chapter Handbook contains information on all of the following except:"
            Publicationsb1.setTitle("Building a Chapter", for: UIControlState.normal)
            Publicationsb2.setTitle("Recruitment", for: UIControlState.normal)
            Publicationsb3.setTitle("Becoming a Leader", for: UIControlState.normal)
            Publicationsb4.setTitle("Fundraising", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 9:
            Publicationslabel.text = "This is Nebraska's official FBLA newsletter and is produced three times each school year, what is it called?"
            Publicationsb1.setTitle("Leadership Today", for: UIControlState.normal)
            Publicationsb2.setTitle("The Pledge", for: UIControlState.normal)
            Publicationsb3.setTitle("Pledging Leadership", for: UIControlState.normal)
            Publicationsb4.setTitle("Leadership Always", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 10:
            Publicationslabel.text = "The following are all national social networking guidelines except which one:"
            Publicationsb1.setTitle("Be Secure", for: UIControlState.normal)
            Publicationsb2.setTitle("Be Responsible", for: UIControlState.normal)
            Publicationsb3.setTitle("Be Transparent", for: UIControlState.normal)
            Publicationsb4.setTitle("Be Resourceful", for: UIControlState.normal)
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
    @IBAction func Publicationsb1action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Publicationsb2action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Publicationsb3action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Publicationsb4action(_ sender: Any) {UnhideLabel()
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
        RandomPublicationsQuestions()
        Hideall()
    }
}


