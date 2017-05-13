//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Dung Pham on 5/3/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var cooltableview: UITableView!
    
    var emojis : [Emoji] =  []
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        cooltableview.dataSource = self
        cooltableview.delegate = self
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defDan = segue.destination as! DefinitionViewController
        defDan.emoji = sender as! Emoji
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArray () -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🐼"
        emoji1.birthYear = 2016
        emoji1.category = "Animal"
        emoji1.definition = "KungFu Panda"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "⛄️"
        emoji2.birthYear = 2017
        emoji2.category = "Animal"
        emoji2.definition = "Snowman"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🖕"
        emoji3.birthYear = 2016
        emoji3.category = "Other"
        emoji3.definition = "Middle Finger"
        
        return [emoji1, emoji2, emoji3]
    }

}

