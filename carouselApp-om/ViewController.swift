//
//  ViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/20/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func onSignInButton(sender: AnyObject) {
        
        //loadingActivityView.startAnimating()
        signInButton.selected = false
        
        if (self.emailTextField.text == "") || (self.passwordTextField == "") {
            var alertView = UIAlertView(title: "Email and password required", message: "Please enter email and password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else {
        
        delay(2, closure: { () -> () in
            //self.loadingActivityView.stopAnimating()
            //self.signInButton.selected = false
            
            if (self.emailTextField.text == "olivia@indiegogo.com") && (self.passwordTextField.text == "password") {
                self.performSegueWithIdentifier("signInSegue", sender: self)
            } else {
                var alertView = UIAlertView(title: "Sign in failed", message: "Wrong email or password", delegate: self, cancelButtonTitle: "OK")
                alertView.show()
            }
        })
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.contentSize = CGSize(width: 320, height: 300)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func goBack(sender: AnyObject) {
        navigationController?.popToRootViewControllerAnimated(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }

}

