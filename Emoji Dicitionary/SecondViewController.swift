//
//  SecondViewController.swift
//  Emoji Dicitionary
//
//  Created by Patrick Tripodi on 3/1/17.
//  Copyright © 2017 Patrick Tripodi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var selectedEmoji: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    var emoji = "NO EMOJI"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        selectedEmoji.text = emoji
        
        //  emojis = ["😀","😆","🤠","🤡","😱","😤","😌","😟","🤢","😡"]
        
        // Else if Statement
        
        //                if emoji == "😀" {
        //                    definitionLabel.text = "What a smile!"
        //                } else if emoji == "😆" {
        //                    definitionLabel.text = "Evil smile"
        //                } else if emoji == "🤠" {
        //                    definitionLabel.text = "Cowboy William"
        //                } else if emoji == "🤡" {
        //                    definitionLabel.text = "Clown Season"
        //                } else if emoji == "😱" {
        //                    definitionLabel.text = "Shocking Emoji!"
        //                } else if emoji == "😤" {
        //                    definitionLabel.text = "Frustrated"
        //                } else if emoji == "😌" {
        //                    definitionLabel.text = "Pure Bliss"
        //                } else if emoji == "😟" {
        //                    definitionLabel.text = "Why you do that?"
        //                } else if emoji == "🤢" {
        //                    definitionLabel.text = "You make me sick"
        //                } else if emoji == "😡" {
        //                    definitionLabel.text = "Piss Off!"
        //                }
        
        // My Switch statement (Preffered)
        
        switch emoji {
        case "😀":
            definitionLabel.text = "What a Smile!"
        case "😆":
            definitionLabel.text = "Evil smile"
        case "🤠":
            definitionLabel.text = "Cowboy William"
        case "🤡":
            definitionLabel.text = "Clown Season"
        case "😱":
            definitionLabel.text = "Shocking Emoji!"
        case "😤":
            definitionLabel.text = "Frustrated"
        case "😌":
            definitionLabel.text = "Pure Bliss"
        case "😟":
            definitionLabel.text = "Why you do that?"
        case "🤢":
            definitionLabel.text = "You make me sick"
        case "😡":
            definitionLabel.text = "Piss Off!"
        default:
            definitionLabel.text = "Nothing Selected!"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
