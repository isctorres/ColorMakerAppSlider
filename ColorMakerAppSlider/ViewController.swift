//
//  ViewController.swift
//  ColorMakerAppSlider
//
//  Created by Isc. Torres on 1/31/20.
//  Copyright © 2020 isctorres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var vwColor: UIView!
    @IBOutlet var sliRed: UISlider!
    @IBOutlet var sliGreen: UISlider!
    @IBOutlet var sliBlue: UISlider!
    
    var red : Float = 0
    var green : Float = 0
    var blue : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        sliRed.tag = 1
        sliGreen.tag = 2
        sliBlue.tag = 3
    }

    @IBAction func crearColor(_ sender: UISlider) {
    
        switch sender.tag {
        case 1: self.red = sliRed.value
            break;
        case 2: self.green = sliGreen.value
            break;
        case 3: self.blue = sliBlue.value
            break;
        default:
            break;
        }
        
        vwColor.backgroundColor =  UIColor(red: CGFloat( self.red/255.0), green: CGFloat(self.green/255.0), blue: CGFloat(self.blue/255.0), alpha: 1.0)
    }
    
}

