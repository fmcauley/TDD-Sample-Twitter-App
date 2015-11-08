//
//  SampleTweetApplTests.swift
//  SampleTweetApplTests
//
//  Created by Frank McAuley on 11/7/15.
//  Copyright © 2015 Frank McAuley. All rights reserved.
//

import XCTest
import Social
@testable import SampleTweetAppl

class SampleTweetApplTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShouldCreateAViewControllerAbleToTweet(){
        let sampleVC = ViewController()
        let tweetVC = sampleVC.sendATweet()
        XCTAssertEqual(tweetVC.serviceType, "com.apple.social.twitter", "service type is wrong\(tweetVC.serviceType)")
    }
    
    func testShouldSendAMessageIfNotAbleToSendATweet(){
        let sampleVC = ViewController()
        let response = sampleVC.failedToSendATweet()
        XCTAssertEqual(response, "It is not possible to send a tweet at this time")
    }
}
