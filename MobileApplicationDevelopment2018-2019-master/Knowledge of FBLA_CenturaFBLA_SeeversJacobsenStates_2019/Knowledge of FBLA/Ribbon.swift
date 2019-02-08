//
//  Ribbon.swift
//  Knowledge of FBLA
//
//  Created by Colten Seevers on 12/28/18.
//  Copyright © 2018 Centura FBLA. All rights reserved.
//

import UIKit
class Ribbon: UIViewController{
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
        Hide()
    }
    
    func RandomRibbonQuestions () {
        
        var RandomNumber = arc4random()  % 28
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Ribbonlabel.text = "Unless other wise stated Nebraskas individual ribbon awards deadline is"
            Ribbonb1.setTitle("March 1", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("April 21", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("March 8", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("April 10", for: <#T##UIControlState#>)
            CorrectAnswer = "1"
            break
            
            
        case 2:
            Ribbonlabel.text = "The seven Up Ribbon requires chapters to increase their membership over the previous year by"
            Ribbonb1.setTitle("5", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("7", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("10", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("12", for: <#T##UIControlState#>)
            CorrectAnswer = "2"
            break
            
        case 3:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 4:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 5:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 6:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 7:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 8:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 9:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        case 10:
            Ribbonlabel.text = ""
            Ribbonb1.setTitle("", for: <#T##UIControlState#>)
            Ribbonb2.setTitle("", for: <#T##UIControlState#>)
            Ribbonb3.setTitle("", for: <#T##UIControlState#>)
            Ribbonb4.setTitle("", for: <#T##UIControlState#>)
            CorrectAnswer = ""
            break
            
        default:
            break
        }
    }
    func Hide(){
        LabelEnd.isHidden = true
        Next.isHidden = true
        
    }
    func Unhide(){
        LabelEnd.isHidden = false
        Next.isHidden = false
        
    }
    @IBAction func Ribbonb1action(_ sender: Any) {Unhide()
        if (CorrectAnswer == "1"){
            LabelEnd.text = "You Are Correct"
        }
        else{
            LabelEnd.text = "You Are Wrong"
        }
    }
    
    @IBAction func Ribbonb2action(_ sender: Any) {Unhide()
        if (CorrectAnswer == "2"){
            LabelEnd.text = "You Are Correct"
        }
        else{
            LabelEnd.text = "You Are Wrong"
        }
    }
    
    @IBAction func Ribbonb3action(_ sender: Any) {Unhide()
        if (CorrectAnswer == "3"){
            LabelEnd.text = "You Are Correct"
        }
        else{
            LabelEnd.text = "You Are Wrong"
        }
    }
    
    @IBAction func Ribbonb4action(_ sender: Any) {Unhide()
        if (CorrectAnswer == "4"){
            LabelEnd.text = "You Are Correct"
        }
        else{
            LabelEnd.text = "You Are Wrong"
        }
    }
    @IBAction func Next(_ sender: Any) {
        RandomRibbonQuestions()
        Hide()
    }
    
    
}

