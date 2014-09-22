//
//  CreateViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/21/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class CreateViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 390)
        // Do any additional setup after loading the view.
    }

    @IBAction func goBack(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
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
