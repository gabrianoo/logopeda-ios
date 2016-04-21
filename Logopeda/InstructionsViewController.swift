//
//  IntroductionsView.swift
//  Logopeda
//
//  Created by Ahmed Hassanien on 4/21/16.
//  Copyright © 2016 Ahmed Hassanien. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {
    
    @IBOutlet weak var instructionsTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(animated: Bool) {
        instructionsTextView.scrollEnabled = false
    }
    
    override func viewDidAppear(animated: Bool) {
        instructionsTextView.scrollEnabled = true
    }
}