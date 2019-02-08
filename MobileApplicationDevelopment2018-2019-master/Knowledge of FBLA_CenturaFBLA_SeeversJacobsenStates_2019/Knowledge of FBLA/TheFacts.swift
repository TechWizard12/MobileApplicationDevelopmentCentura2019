//
//  TheFacts.swift
//  In the Know FBLA
//
//  Created by Created by Colten Seevers, Jayden Jacobsen, Caitlin States on 12/28/18.
//  Copyright © 2019 Centura FBLA. All rights reserved.
//

import UIKit

class TheFacts: UIViewController{
    @IBOutlet var Factlabel: UILabel!
    
    @IBOutlet var Factb1: UIButton!
    @IBOutlet var Factb2: UIButton!
    @IBOutlet var Factb3: UIButton!
    @IBOutlet var Factb4: UIButton!
    
    @IBOutlet var LabelEnd: UILabel!
    @IBOutlet var Next: UIButton!
    
    var CorrectAnswer = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RandomFactQuestions()
        Hideall()
    }
    func RandomFactQuestions () {
        
        var RandomNumber = arc4random()  % 10
        RandomNumber += 1
        switch(RandomNumber) {
            
            
        case 1:
            Factlabel.text = "How many career clusters are respresented at the Nebraska State Leadership Conference?"
            Factb1.setTitle("10", for: UIControlState.normal)
            Factb2.setTitle("8", for: UIControlState.normal)
            Factb3.setTitle("5", for: UIControlState.normal)
            Factb4.setTitle("3", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 2:
            Factlabel.text = "Future Bussiness Leaders of America is for who?"
            Factb1.setTitle("Junior High and Middle School Students", for: UIControlState.normal)
            Factb2.setTitle("High School Students", for: UIControlState.normal)
            Factb3.setTitle("Postsecondary Students", for: UIControlState.normal)
            Factb4.setTitle("Professional Businessmen and Women", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 3:
            Factlabel.text = "Phi Beta Lambda is for who?"
            Factb1.setTitle("Junior High and Middle School Students", for: UIControlState.normal)
            Factb2.setTitle("High School Students", for: UIControlState.normal)
            Factb3.setTitle("Postsecondary Students", for: UIControlState.normal)
            Factb4.setTitle("Professional Businessmen and Women", for: UIControlState.normal)
            CorrectAnswer = "3"
            break
            
        case 4:
            Factlabel.text = "FBLA-Middle Level for who?"
            Factb1.setTitle("Junior High and Middle School Students", for: UIControlState.normal)
            Factb2.setTitle("High School Students", for: UIControlState.normal)
            Factb3.setTitle("Postsecondary Students", for: UIControlState.normal)
            Factb4.setTitle("Professional Businessmen and Women", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 5:
            Factlabel.text = "Professional Division is for who?"
            Factb1.setTitle("Junior High and Middle School Students", for: UIControlState.normal)
            Factb2.setTitle("High School Students", for: UIControlState.normal)
            Factb3.setTitle("Postsecondary Students", for: UIControlState.normal)
            Factb4.setTitle("Professional Businessmen and Women", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 6:
            Factlabel.text = "FBLA Week is always held:"
            Factb1.setTitle("January", for: UIControlState.normal)
            Factb2.setTitle("February", for: UIControlState.normal)
            Factb3.setTitle("March", for: UIControlState.normal)
            Factb4.setTitle("April", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 7:
            Factlabel.text = "How many FBLA Regions are there?"
            Factb1.setTitle("5", for: UIControlState.normal)
            Factb2.setTitle("6", for: UIControlState.normal)
            Factb3.setTitle("7", for: UIControlState.normal)
            Factb4.setTitle("8", for: UIControlState.normal)
            CorrectAnswer = "1"
            break
            
        case 8:
            Factlabel.text = "The 2018-2019 FBLA Theme is:"
            Factb1.setTitle("Hustle and Heart Will Set You Apart", for: UIControlState.normal)
            Factb2.setTitle("Bring Your 'A' Game", for: UIControlState.normal)
            Factb3.setTitle("Invest in Yourself", for: UIControlState.normal)
            Factb4.setTitle("Create. Lead. Inspire", for: UIControlState.normal)
            CorrectAnswer = "4"
            break
            
        case 9:
            Factlabel.text = "What are the official colors of FBLA?"
            Factb1.setTitle("Navy Blue and Silver", for: UIControlState.normal)
            Factb2.setTitle("Navy Blue and Gold", for: UIControlState.normal)
            Factb3.setTitle("Purple and Silver", for: UIControlState.normal)
            Factb4.setTitle("Purple and Gold", for: UIControlState.normal)
            CorrectAnswer = "2"
            break
            
        case 10:
            Factlabel.text = "Individual annual national dues are:"
            Factb1.setTitle("$5", for: UIControlState.normal)
            Factb2.setTitle("$6", for: UIControlState.normal)
            Factb3.setTitle("$7", for: UIControlState.normal)
            Factb4.setTitle("$8", for: UIControlState.normal)
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
    @IBAction func Factb1action(_ sender: Any)
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
    
    @IBAction func Factb2action(_ sender: Any)
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
    
    @IBAction func Factb3action(_ sender: Any)
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
    
    @IBAction func Factb4action(_ sender: Any)
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
        RandomFactQuestions()
        Hideall()
    }
    
}


