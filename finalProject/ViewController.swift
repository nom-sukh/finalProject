//
//  ViewController.swift
//  finalProject
//
//  Created by Apple on 6/26/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var redditButton: UIButton!
    @IBOutlet weak var hazardButton: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        redditButton.addTarget(self, action: "redditLink", for: .touchUpInside)
        hazardButton.addTarget(self, action: "hazardSitesLink", for: .touchUpInside)
    }
    @IBAction func redditLink(_ sender: UIButton)
    {
        UIApplication.shared.openURL(NSURL(string: "https://www.reddit.com/user/greenwatch101/comments/c66cr1/question/")! as URL)
    }
    @IBAction func hazardSitesLink(_ sender: UIButton)
    {
        UIApplication.shared.openURL(NSURL(string: "https://www.epa.gov/superfund/search-superfund-sites-where-you-live")! as URL)
    }
    
}
