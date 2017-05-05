//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Dung Pham on 5/4/17.
//  Copyright © 2017 Dung Pham. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = " No Emoji"
        
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "🐼" {
            definitionLabel.text = "This is a fucking panda"
        }
        if emoji == "⛄️" {
            definitionLabel.text = "Yeah, I am a snowman, So!@@"
        }
        if emoji == "🖕" {
            definitionLabel.text = "I love you bae"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
