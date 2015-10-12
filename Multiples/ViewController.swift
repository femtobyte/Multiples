//
//  ViewController.swift
//  Multiples
//
//  Created by C Sinclair on 10/11/15.
//  Copyright © 2015 mingdyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    let maxSum = 50
    var currentSum = 0
    var multipleAmt = 0
    
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var addTxt: UITextView!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var multipleTxt: UITextField!

   

    
    @IBAction func onAddTap(sender: UIButton) {
        if(currentSum < maxSum){
            updateAddText()
        }else{
            endGame()
        }
    }
    
    // handles dismissing keyboard if you touch outside the keyboard
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(sender: UIButton!) {
        if(multipleTxt.text != nil && multipleTxt.text != ""){
            logo.hidden = true
            multipleTxt.hidden = true
            playBtn.hidden = true
            
            addTxt.hidden = false
            addBtn.hidden = false
            multipleAmt = Int(multipleTxt.text!)!
        }
    }
    
    
    func updateAddText(){
        var total = currentSum + multipleAmt
        addTxt.text = "\(currentSum) + \(multipleAmt) = \(total)"
        currentSum = total
    }
    
    func endGame(){
        currentSum = 0
        multipleTxt.text = ""
        
        addBtn.hidden = true
        addTxt.hidden = true
        
        logo.hidden = false
        playBtn.hidden = false
        multipleTxt.hidden = false
        addTxt.text = "Press Add to add!"
        
    }
    

}

