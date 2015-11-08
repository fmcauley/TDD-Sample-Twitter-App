//
//  ViewController.swift
//  SampleTweetAppl
//
//  Created by Frank McAuley on 11/7/15.
//  Copyright © 2015 Frank McAuley. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendTweet(sender: AnyObject) {
        if SLComposeViewController.isAvailableForServiceType(SLServiceTypeTwitter){
            presentViewController(self.sendATweet(), animated: true, completion: nil)
        } else {
            print(self.failedToSendATweet())
        }
    }
    
    
    func sendATweet() -> SLComposeViewController{
        let tweetVC = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        tweetVC.setInitialText("This is a sample tweet from a test app")
        return tweetVC
    }
    
    func failedToSendATweet() -> String {
        return "It is not possible to send a tweet at this time"
    }
    
}

