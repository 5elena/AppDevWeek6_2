//
//  ViewController.swift
//  AppDevWeek6_2
//
//  Created by Selena on 2018/8/21.
//  Copyright © 2018年 Selena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //宣告storyboard裡所有元件的型別
    @IBOutlet weak var ageSliderControl: UISlider!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var zodiacTextField: UITextField!
    @IBOutlet weak var genderSegmented: UISegmentedControl!
    @IBOutlet weak var gameplayerSegmented: UISegmentedControl!
    @IBOutlet weak var petSegmented: UISegmentedControl!
    @IBOutlet weak var doveImage: UIImageView!
    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var numberStepper: UIStepper!
    @IBOutlet weak var stepperValue: UILabel!
    var numValue:Int=0 //設置stepperValue的值為Int

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //設定顯示為真愛的唯一條件
    @IBAction func selectTrueLove(_ sender: Any) {
        if zodiacTextField.text == "雙魚" //雙魚座
            && ageLabel.text == "32" //年紀
            && genderSegmented.selectedSegmentIndex == 1 //性別男
            && petSegmented.selectedSegmentIndex == 0 //喜歡狗
            && gameplayerSegmented.selectedSegmentIndex == 0 //喜歡打電動
            && stepperValue.text == "3" //喜歡的數字
                {
            answerImage.image = UIImage(named: "dove-2") //符合以上條件就顯示dove-2圖
            answerLabel.text = "YES YOU ARE!" //以及這串文字
        } else { //如果以上不符合
            answerImage.image = UIImage(named: "dove-3") //不符合以上條件就顯示dove-3
            answerLabel.text = "NO HELL NO!" //以及這串文字
        }
    }
    
    // 設置年齡Slider，可調整顯示歲數大小
    @IBAction func ageSlider(_ sender: Any) {
        ageLabel.isHidden = false
        ageLabel.text = String(Int(ageSliderControl.value))
    }
    
    //設置最愛數字Stepper，設定最大最小值，並可從最小值重來
    @IBAction func numStepper(_ sender: UIStepper) {
        numValue = Int(sender.value)
        stepperValue.text = "\(numValue)"
        numberStepper.maximumValue = 9 //設定最大值
        numberStepper.minimumValue = 0 //設定最小值
        numberStepper.wraps = true // 到最大值以後，再按一次會從最小值繼續加
    }
    
}

