//
//  ViewController.swift
//  ACVideoPlay2
//
//  Created by James Burton on 1/7/18.
//  Copyright © 2018 SApp. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
    var playerController = AVPlayerViewController()
    var player: AVPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let videoString: String? = Bundle.main.path(forResource: "SampleVideo_1280x720_5mb", ofType: "mp4")
        
        if let url = videoString {
            
            let videoURL = NSURL(fileURLWithPath: url)
            
            self.player = AVPlayer(url: videoURL as URL)
            self.playerController.player = self.player
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playVideo(_ sender: Any) {
        
        self.present(self.playerController, animated: true, completion: {
            
            self.playerController.player?.play()
            
            })
    }
    
}

