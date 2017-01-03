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
    
    var emojis = ["😀","😆","🤠","🤡","😱","😤","😌","😟","🤢","😡"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTableView.dataSource = self
        myTableView.delegate = self
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        // Assigns emoji to Row for segue
        cell.textLabel?.text = emojis[indexPath.row]
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
        secVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

