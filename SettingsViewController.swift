//
//  SettingsViewController.swift
//  Voice Recorder
//
//  Created by Moaz Ahmed on 5/12/16.
//  Copyright © 2016 Moaz Ahmed. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var qualityLevelSegmented: UISegmentedControl!
    @IBOutlet var settingsView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }
    
    override var preferredContentSize: CGSize {
        get {
                return settingsView.sizeThatFits(presentingViewController!.view.bounds.size)//textView.sizeThatFits(presentingViewController!.view.bounds.size)
            }
        
        set { super.preferredContentSize = newValue }
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
