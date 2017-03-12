//
//  ViewController.swift
//  DoSomething
//
//  Created by Raj Patel on 1/28/17.
//  Copyright © 2017 vrknights. All rights reserved.
//

import UIKit
import FBSDKLoginKit


class ViewController: UIViewController, FBSDKLoginButtonDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
        view.addSubview(loginButton)
        
        // frames are obsolete, please use constraints instead because its 2016 after all
        loginButton.frame = CGRect(x: 16, y: 400, width: view.frame.width-32, height: 50)
        
        loginButton.delegate = self
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did log out of Facebook")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        
        print("Succesfully logged in with facebook...")
    }

    
    
    
    

}

