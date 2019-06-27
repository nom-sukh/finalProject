//
//  FactViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class FactViewController: UIViewController
{
    let emojis = ["😄": "happyFact", "😥": "sadFact"]
    var customMessages = ["happyFact" : ["Aluminum can be recycled continuously, as in forever. Recycling 1 aluminum can save enough energy to run our TVs for at least 3 hours. 80 trillion aluminum cans are used by humans every year.", "The world’s oldest trees are more than 4,600 years old", "Through recycling and composting of waste, approximately 181 million metric tons of carbon dioxide was eliminated in 2014.", "Simple things like biking and walking instead of riding a car can reduce greenhouse gases.",  "Composting makes a significant difference to lessening the burden on landfills, which emit significant quantities of methane." , "Approximately 52,000 square kilometers of forests are developed every year."], "sadFact" : ["When you throw plastic bags and other plastic materials in the ocean, it kills as many as 1 million sea creatures annually.", "An estimated 50,000 species inhabiting our tropical forests become extinct annually.", "Rainforests are cut down at a rate of 100 acres per minute", "A glass bottle made in our time will take more than 4,000 years to decompose.", "27,000 trees are cut down each day so we can have Toilet Paper.", "The U.S. burns 10,000 gallons of gasoline a second. Burning one gallon of gas creates 22 pounds of carbon dioxide. That equals 220,000 pounds of carbon dioxide per second. Human and animal life cannot breathe carbon dioxide. Oxygen is needed for these life-forms to exist"]]
    //Need to drag show message. This will NOT just work on it's own.
    
    @IBAction func showMessages(_ sender: UIButton)
    {
        let rando = Int.random(in: 0...5)
        var selectedEmotion = sender.titleLabel?.text
        let emojiMessage = customMessages[emojis[selectedEmotion!]!]?[rando]
        let alertController = UIAlertController(title: "Fact: ", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
}
