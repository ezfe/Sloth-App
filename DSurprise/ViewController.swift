//
//  ViewController.swift
//  DSurprise
//
//  Created by Ezekiel Elin on 8/15/15.
//  Copyright © 2015 Ezekiel Elin. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.black
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func share(sender: Any) {
        let objectsToShare = [#imageLiteral(resourceName: "sloth")]
        let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)

        activityVC.popoverPresentationController?.sourceView = sender as? UIView
        
        self.present(activityVC, animated: true, completion: nil)
        
    }

}

