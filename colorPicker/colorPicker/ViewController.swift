//
//  ViewController.swift
//  colorPicker
//
//  Created by Carlos Taay on 11/24/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resetBtn(_ sender: Any) {
        resetSliders()
    }
    @IBAction func sldBlueAction(_ sender: Any) {
        changeColor()
    }
    @IBAction func sldGreenAction(_ sender: Any) {
        changeColor()
    }
    @IBAction func sldRedAction(_ sender: Any) {
        changeColor()
        
    }
    func changeColor(){
        self.view.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1.0)
    }
    func resetSliders(){
        redSlider.value = 0.5
        greenSlider.value = 0.5
        blueSlider.value = 0.5
        
        changeColor()
    }
}

