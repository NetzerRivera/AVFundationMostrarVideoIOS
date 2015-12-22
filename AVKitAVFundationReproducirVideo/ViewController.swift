//
//  ViewController.swift
//  AVKitAVFundationReproducirVideo
//
//  Created by Netzer Rivera on 21/12/15.
//  Copyright © 2015 Netzer Rivera. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation


class ViewController: UIViewController {
    
    private var reproductor =  AVPlayer!()
    private var controlador =  AVPlayerViewController!()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let videoURL = NSBundle.mainBundle().URLForResource("Atomic", withExtension: "mp4")
        
        reproductor = AVPlayer(URL: videoURL!)
        controlador = AVPlayerViewController()
        controlador.player = reproductor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play() {
        
        self.addChildViewController(controlador)
        controlador.view.frame = CGRectMake(10, 30, 320, 280)
        self.view.addSubview(controlador.view)
        reproductor.play()
    }

}

