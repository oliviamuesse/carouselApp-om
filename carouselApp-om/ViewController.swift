//
//  ViewController.swift
//  carouselApp-om
//
//  Created by Olivia Muesse on 9/20/14.
//  Copyright (c) 2014 Olivia Muesse. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var signInView: UIView!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func onTap(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }

//    func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        var offset = scrollView.contentOffset.y
//        println(offset)
//    }
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            self.scrollView.contentOffset.y = 102
            self.signInView.center.y = 236
            }, completion: nil)
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions.fromRaw(UInt(animationCurve << 16))!, animations: {
            self.scrollView.contentOffset.y = 0
            self.signInView.center.y = 510
            }, completion: nil)
    }

    
    @IBAction func onSignInButton(sender: AnyObject) {
        signInButton.selected = false
        if (self.emailTextField.text == "") || (self.passwordTextField == "") {
            var alertView = UIAlertView(title: "Email and password required", message: "Please enter email and password", delegate: self, cancelButtonTitle: "OK")
            alertView.show()
        } else {
            var signInAlertView = UIAlertView(title: "Signing in...", message: nil, delegate: self, cancelButtonTitle: nil)
            signInAlertView.show()
            delay(1.5, closure: { () -> () in
                signInAlertView.dismissWithClickedButtonIndex(0, animated: true)
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
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: 320, height: 300)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
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

