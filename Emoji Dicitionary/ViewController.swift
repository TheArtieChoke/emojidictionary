//
//  ViewController.swift
//  Emoji Dicitionary
//
//  Created by Patrick Tripodi on 3/1/17.
//  Copyright © 2017 Patrick Tripodi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTableView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        // Deselect row (Get rid of Grey)
        tableView.deselectRow(at: indexPath, animated: true)
        // Go to second view
        performSegue(withIdentifier: "moveSegway", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secVC = segue.destination as! SecondViewController
        secVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji]{
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.year = 2007
        emoji1.category = "Smiley"
        emoji1.defintion = "What a Smile!"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😆"
        emoji2.year = 2007
        emoji2.category = "Smiley"
        emoji2.defintion = "Evil Smile"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🤠"
        emoji3.year = 2011
        emoji3.category = "Smiley"
        emoji3.defintion = "Cowboy William"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🤡"
        emoji4.year = 2016
        emoji4.category = "Smiley"
        emoji4.defintion = "Clown Season"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "😱"
        emoji5.year = 2007
        emoji5.category = "Smiley"
        emoji5.defintion = "Shocking Emoji"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😤"
        emoji6.year = 2007
        emoji6.category = "Smiley"
        emoji6.defintion = "Frustrated"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "😌"
        emoji7.year = 2010
        emoji7.category = "Smiley"
        emoji7.defintion = "Pure Bliss"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "😟"
        emoji8.year = 2009
        emoji8.category = "Smiley :("
        emoji8.defintion = "Why you do that?"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "🤢"
        emoji9.year = 2007
        emoji9.category = "Smiley"
        emoji9.defintion = "You make me sick"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "😡"
        emoji10.year = 2009
        emoji10.category = "Smiley"
        emoji10.defintion = "Piss Off!"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10]
        
    }

}

