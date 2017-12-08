//  Copyright © 2017 Schibsted. All rights reserved.

import UIKit
import Layout

class BoxesViewController: UIViewController {

    var toggled = false {
        didSet {
            layoutNode?.setState(["isToggled": toggled])
        }
    }

    @IBOutlet var layoutNode: LayoutNode? {
        didSet {
            layoutNode?.setState(["isToggled": toggled])
        }
    }

    @IBAction func setToggled() {
        UIView.animate(withDuration: 0.4) {
            self.toggled = true
        }
    }

    @IBAction func setUntoggled() {
        UIView.animate(withDuration: 0.4) {
            self.toggled = false
        }
    }
    
    @IBOutlet var webView: UIWebView?
    
    override func viewDidLoad() {
        webView?.loadRequest(URLRequest(url:NSURL(string: "https://makeapppie.com/2015/10/21/why-your-web-view-doesnt-work-in-ios9-and-what-to-do-about-it/")! as URL))
        
     /*   let url = URL(string: "https://makeapppie.com/2015/10/21/why-your-web-view-doesnt-work-in-ios9-and-what-to-do-about-it/")
        webView?.loadRequest(URLRequest(url: url!))
        webView?.backgroundColor = UIColor.orange */
    }
    
    override func viewDidAppear(_ animated: Bool) {
     //   let url = URL(string: "https://www.youtube.com/embed/0qHGEgFucQU")
      //  webView?.loadRequest(URLRequest(url: url!))
        webView?.backgroundColor = UIColor.orange
    }
}
