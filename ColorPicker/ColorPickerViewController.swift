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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var delegate: ColorPickerViewDelegate?
    
    @IBAction func onPickColorGreen(sender: Any) {
        delegate?.userDidChooseColor(color: ColorAsset.green.color)
    }
    
    @IBAction func onPickColorOrange(sender: Any) {
        delegate?.userDidChooseColor(color: ColorAsset.orange.color)
    }
    
    @IBAction func onPickColorPurple(sender: Any) {
        delegate?.userDidChooseColor(color: ColorAsset.purple.color)
    }
}
