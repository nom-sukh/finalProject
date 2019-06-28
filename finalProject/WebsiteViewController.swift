//
//  WebsiteViewController.swift
//  finalProject
//
//  Created by Apple on 6/27/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class WebsiteViewController: UIViewController
{
    var url = ""
    @IBOutlet weak var gpButton: UIButton!
    @IBOutlet weak var thButton: UIButton!
    @IBOutlet weak var ngButton: UIButton!
    override func  viewDidLoad()
    {
        super.viewDidLoad()
        gpButton.addTarget(self, action: "greenPeacelink", for: .touchUpInside)
        thButton.addTarget(self, action: "treeHuglink", for: .touchUpInside)
        ngButton.addTarget(self, action: "natGeolink", for: .touchUpInside)
    }
    @IBAction func natGeolink(_ sender: UIButton)
    {
        UIApplication.shared.openURL(NSURL(string: "https://www.nationalgeographic.com/environment/")! as URL)
    }
    @IBAction func treeHuglink(_ sender: UIButton)
    {
        UIApplication.shared.openURL(NSURL(string: "https://www.treehugger.com/")! as URL)
    }
    @IBAction func greenPeacelink(_ sender: UIButton)
    {
        UIApplication.shared.openURL(NSURL(string: "https://www.greenpeace.org/usa/")! as URL)
    }
}
