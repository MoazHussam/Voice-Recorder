//
//  RecorderViewController.swift
//  Voice Recorder
//
//  Created by Moaz Ahmed on 5/12/16.
//  Copyright © 2016 Moaz Ahmed. All rights reserved.
//

import UIKit

class RecorderViewController: UIViewController, UIPopoverPresentationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.None
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let identifier = segue.identifier {
            switch identifier {
            case StoryBoard.settingsSegue:
                if let settingsViewController = segue.destinationViewController as? SettingsViewController {
                    if let popoverViewController = settingsViewController.popoverPresentationController {
                        popoverViewController.delegate = self
                    }
                }
            default: break
            }
        }
    }

}
