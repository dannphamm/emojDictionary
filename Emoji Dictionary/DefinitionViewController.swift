//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Dung Pham on 5/4/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var birthyearlabel: UILabel!
    @IBOutlet weak var categorylabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji.stringEmoji
        birthyearlabel.text = "Orgination date: \(emoji.birthYear)"
        categorylabel.text = "category: \(emoji.category)"
        definitionLabel.text = emoji.definition
         }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
