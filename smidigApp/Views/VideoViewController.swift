//
//  VideoViewController.swift
//  smidigApp
//
//  Created by Joseph Nimoson on 12/06/2019.
//  Copyright © 2019 Joseph Nimoson. All rights reserved.
//

import UIKit
import YoutubePlayer_in_WKWebView


class VideoViewController: UIViewController {
    @IBOutlet weak var videoView: WKYTPlayerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videoView.load(withVideoId: "veNMPmA9KxQ")
    }
}
