//
//  AnimalViewController.swift
//  Animals
//
//  Created by Michael Dippery on 7/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class AnimalViewController: UIViewController {
    
    
    @IBOutlet weak var englishNameLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    
    var englishName: String = ""
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.englishNameLabel.text = englishName
        self.emojiLabel.text = mappingNameToEmoji(name: englishName)
//        self.navigationItem.title = englishName
        
        title = englishName
        
    }
}

 func mappingNameToEmoji(name: String) -> String {
    switch name {
    case "Dog" :
        return "🐶"
    case "Cat" :
        return "🐱"
    case "Mouse" :
        return "🐭"
    case "Hamster":
        return "🐹"
    case "Bunny":
        return "🐰"
    case "Panda":
        return "🐼"
    case "Lion":
        return "🦁"
    case "Pig":
        return "🐷"
    case "Frog":
        return "🐸"
    case "Octopus":
        return "🐙"
    default:
        return ""
    }
}
