//
//  SettingsViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/21/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var settingsImageView: UIImageView!
    @IBOutlet weak var settingsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsScrollView.contentSize = settingsImageView.frame.size
        // Do any additional setup after loading the view.
    }

    @IBAction func closeSettings(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
