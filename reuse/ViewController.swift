//
//  ViewController.swift
//  reuse
//
//  Created by Anthony Elliott on 2/26/18.
//  Copyright © 2018 Pillar Technology. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: SubtitleView!
    @IBOutlet weak var bottomView: SubtitleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        topView.subtitleLabel.text = "Top"
        bottomView.subtitleLabel.text = "Bottom"
    }
}

