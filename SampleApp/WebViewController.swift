//
//  WebViewController.swift
//  SampleApp
//
//  Created by Rohan Rodrigues on 12/2/17.
//  Copyright © 2017 Nick Lockwood. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    webView.loadRequest(URLRequest(url:NSURL(string: "https://youtu.be/JYQFMkmL2C8")! as URL))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
