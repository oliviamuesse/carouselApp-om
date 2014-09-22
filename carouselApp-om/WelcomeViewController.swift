//
//  WelcomeViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/21/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController, UIScrollViewDelegate {
   
    @IBOutlet weak var welcomeScrollView: UIScrollView!
    @IBOutlet weak var wecome1ImageView: UIImageView!
    @IBOutlet weak var welcome2ImageView: UIImageView!
    @IBOutlet weak var welcome3ImageView: UIImageView!
    @IBOutlet weak var welcome4ImageView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var toCarouselButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeScrollView.contentSize = CGSize(width: 1280, height: 568)
        welcomeScrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page = Int(welcomeScrollView.contentOffset.x / 320)
        
        if (page == 3) {
            UIView.animateWithDuration(0.3) {
                self.toCarouselButton.alpha = 1
            }
        }
        // Set the current page, so the dots will update
        pageControl.currentPage = page
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
