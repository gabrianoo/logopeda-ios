//
//  DataViewController.swift
//  Logopeda
//
//  Created by Ahmed Hassanien on 4/18/16.
//  Copyright © 2016 Ahmed Hassanien. All rights reserved.
//

import UIKit
import AVFoundation

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UIButton!
    @IBOutlet weak var dataImage: UIImageView!
    var dataObject: String = ""
    var player = AVAudioPlayer()

    @IBAction func playSound(sender: AnyObject) {
        let url:NSURL = NSBundle.mainBundle().URLForResource("\(dataObject)", withExtension: "wav")!
        
        do {
            player = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
        }
        catch let error as NSError {
            print(error.description)
        }
        
        player.numberOfLoops = 1
        player.prepareToPlay()
        player.play()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.dataLabel!.setTitle("\(dataObject) \(dataObject)", forState: .Normal)
        self.dataImage.image = UIImage(named: "\(dataObject).jpg")
    }

}

