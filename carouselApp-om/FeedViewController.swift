//
//  FeedViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/21/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var feedImageView: UIImageView!
    @IBOutlet weak var feedScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()
        feedScrollView.contentSize = feedImageView.frame.size
        // Do any additional setup after loading the view.
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
