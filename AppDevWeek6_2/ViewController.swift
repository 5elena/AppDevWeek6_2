//
//  ViewController.swift
//  AppDevWeek6_2
//
//  Created by Selena on 2018/8/21.
//  Copyright © 2018年 Selena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageSliderControl: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var zodiacTextField: UITextField!
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    @IBOutlet weak var gameplayerSegmented: UISegmentedControl!
    @IBOutlet weak var petSegmented: UISegmentedControl!
    @IBOutlet weak var doveImage: UIImageView!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func selectTrueLove(_ sender: Any) {
        if zodiacTextField.text == "雙魚"
            && ageLabel.text == "32"
            && genderSegmented.selectedSegmentIndex == 1
            && petSegmented.selectedSegmentIndex == 0
            && gameplayerSegmented.selectedSegmentIndex == 0
                {
            answerImage.image = UIImage(named: "dove-2")
            answerLabel.text = "YES YOU ARE!"
        } else {
            answerImage.image = UIImage(named: "dove-3")
            answerLabel.text = "NO HELL NO!"
        }
    }
    
    @IBAction func ageSlider(_ sender: Any) {
        ageLabel.isHidden = false
        ageLabel.text = String(Int(ageSliderControl.value))
    }
    
}

