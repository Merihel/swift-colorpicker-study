//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 LPIEM Lyon1. All rights reserved.
//

import UIKit

protocol ColorPickerViewDelegate {
    mutating func userDidChooseColor(color: UIColor)
}

class ColorPickerViewController: UIViewController {
    
    var completionHandler: ((UIColor) -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onPickColorGreen(sender: Any) {
        completionHandler?(ColorAsset.green.color)
    }
    
    @IBAction func onPickColorOrange(sender: Any) {
        completionHandler?(ColorAsset.orange.color)
    }
    
    @IBAction func onPickColorPurple(sender: Any) {
        completionHandler?(ColorAsset.purple.color)
    }
}
