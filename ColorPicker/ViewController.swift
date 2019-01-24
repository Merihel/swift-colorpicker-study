//
//  ViewController.swift
//  ColorPicker
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 LPIEM Lyon1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerViewDelegate {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var lastColor: UIColor?
    
    func userDidChooseColor(color: UIColor) {
        dismiss(animated: true, completion: nil)
        self.view.backgroundColor = color
        
        let alert = UIAlertController(title: "Info", message: "Souhaitez-vous garder cette couleur ?",preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Oui", style: .default, handler: {action in
            self.lastColor = color
        }))
        alert.addAction(UIAlertAction(title: "Non", style: .default, handler: {action in
            UIView.animate(withDuration: 0.8, animations: {self.view.alpha = 0.1}, completion: {(finished) -> Void in
                self.view.backgroundColor = self.lastColor
                
                UIView.animate(withDuration: 0.8, animations: {self.view.alpha = 1})
            })
        }))
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "pickColor" {
            if let destinationVC = segue.destination as? ColorPickerViewController {
                destinationVC.delegate = self
            }
        }
    }
}

