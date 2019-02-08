//
//  Events.swift
//  In the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class Events: UIViewController{
    @IBOutlet var Eventlabel: UILabel!
    
    @IBOutlet var Eventb1: UIButton!
    @IBOutlet var Eventb2: UIButton!
    @IBOutlet var Eventb3: UIButton!
    @IBOutlet var Eventb4: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var Next: UIButton!
    
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomEventQuestions()
        Hideall()
    }
    func RandomEventQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Eventlabel.text = "The date and location for the NLC is recommended by the national staff and approved by the:"
            Eventb1.setTitle("Board of Directors", for: UIControlState.normal)
            Eventb2.setTitle("State Chairpersons", for: UIControlState.normal)
            Eventb3.setTitle("National Advisory Committee", for: UIControlState.normal)
            Eventb4.setTitle(" National Executive Council", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            Eventlabel.text = "An example of appropriate dress shoes for conferences would be:"
            Eventb1.setTitle("Dress boots", for: UIControlState.normal)
            Eventb2.setTitle("Sandals", for: UIControlState.normal)
            Eventb3.setTitle("Shoes with laces", for: UIControlState.normal)
            Eventb4.setTitle("Closed toe dress shoes", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 3:
            Eventlabel.text = "How many different locations is the NFLC held each year?"
            Eventb1.setTitle("5", for: UIControlState.normal)
            Eventb2.setTitle("4", for: UIControlState.normal)
            Eventb3.setTitle("3", for: UIControlState.normal)
            Eventb4.setTitle("2", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 4:
            Eventlabel.text = "The 2019 Nebraska SLC Registration Deadline is:"
            Eventb1.setTitle("February 1, 2019", for: UIControlState.normal)
            Eventb2.setTitle("February 8, 2019", for: UIControlState.normal)
            Eventb3.setTitle("February 15, 2019", for: UIControlState.normal)
            Eventb4.setTitle("February 22, 2019", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 5:
            Eventlabel.text = "The 2020 NLC Conference is to be held at"
            Eventb1.setTitle("Salt Lake City, UT", for: UIControlState.normal)
            Eventb2.setTitle("Anaheim, CA", for: UIControlState.normal)
            Eventb3.setTitle("Baltimore, MD", for: UIControlState.normal)
            Eventb4.setTitle("Kansas City, MO", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 6:
            Eventlabel.text = "The NLC is held during the:"
            Eventb1.setTitle("Fall", for: UIControlState.normal)
            Eventb2.setTitle("Winter", for: UIControlState.normal)
            Eventb3.setTitle("Spring", for: UIControlState.normal)
            Eventb4.setTitle("Summer", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 7:
            Eventlabel.text = "The SLC is held during the:"
            Eventb1.setTitle("Fall", for: UIControlState.normal)
            Eventb2.setTitle("Winter", for: UIControlState.normal)
            Eventb3.setTitle("Spring", for: UIControlState.normal)
            Eventb4.setTitle("Summer", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 8:
            Eventlabel.text = "The FBLA Middle Level Chapter Handbook contains information on all of the following except:"
            Eventb1.setTitle("Building a Chapter", for: UIControlState.normal)
            Eventb2.setTitle("Recruitment", for: UIControlState.normal)
            Eventb3.setTitle("Becoming a Leader", for: UIControlState.normal)
            Eventb4.setTitle("Fundraising", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 9:
            Eventlabel.text = "The NFLC is held during the month of:"
            Eventb1.setTitle("August", for: UIControlState.normal)
            Eventb2.setTitle("September", for: UIControlState.normal)
            Eventb3.setTitle("October", for: UIControlState.normal)
            Eventb4.setTitle("November", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 10:
            Eventlabel.text = "The FLC is held during the month of:"
            Eventb1.setTitle("August", for: UIControlState.normal)
            Eventb2.setTitle("September", for: UIControlState.normal)
            Eventb3.setTitle("October", for: UIControlState.normal)
            Eventb4.setTitle("November", for: UIControlState.normal)
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
    @IBAction func Eventb1action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Eventb2action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    @IBAction func Eventb3action(_ sender: Any) {UnhideLabel()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
            UnhideNext()
        }
        else{
            LabelEnd.text = "You Are Wrong"
            HideNext()
        }
    }
    
    @IBAction func Eventb4action(_ sender: Any) {UnhideLabel()
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
        RandomEventQuestions()
        Hideall()
    }
    
}
