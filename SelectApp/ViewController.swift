//
//  ViewController.swift
//  SelectApp
//
//  Created by john john on 2017/4/24.
//  Copyright © 2017年 John. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var genddrSegment: UISegmentedControl!
    @IBOutlet weak var incomeLabel: UILabel!
    @IBOutlet weak var answerLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectIncomeSlider(_ sender: UISlider) {
        if sender.value == 15000 {
            self.incomeLabel.text = "<\(sender.value)"
        }else if sender.value == 60000 {
            self.incomeLabel.text = ">\(sender.value)"
        }else {
            self.incomeLabel.text = "\(sender.value)"
        }
    }
    @IBAction func pushOk(_ sender: UIButton) {
        let salary = Float(self.incomeLabel.text!)
        if nameTextField.text == nil || salary == nil {
            let alert = UIAlertController(title: "Oops", message: "名字或薪資尚未填寫", preferredStyle: .alert)
            let btn = UIAlertAction(title: "好", style: .default, handler: nil)
            alert.addAction(btn)
            present(alert, animated: true, completion: nil)
        }else{
            if salary! <= (272538/12) {
                answerLabel.text = "建議你先好好努力賺錢吧！這樣才有能力養活自己唷！"
            }else if salary! <= (376240/12) {
                if genddrSegment.selectedSegmentIndex == 0
                {
                    answerLabel.text = "把目標放在新進的女同事吧！"
                }else {
                    answerLabel.text = "努力學好化妝以及打扮，前輩們很吃這套的！"
                }
                
            }else if salary! <= (497682/12) {
                if genddrSegment.selectedSegmentIndex == 0
                {
                    answerLabel.text = "多多利用下班時間去認識一些女孩吧！"
                }else {
                    answerLabel.text = "試著跟老同學聯絡聯絡，說不定可以讓你心動唷"
                }
            }else if salary! <= (708630/12) {
                if genddrSegment.selectedSegmentIndex == 0
                {
                    answerLabel.text = "找個時間去健身房吧！有了身材會更加分！"
                }else {
                    answerLabel.text = "多花時間在培養自己的興趣吧！男人麻，多點才藝就得手了"
                }
            }else {
                if genddrSegment.selectedSegmentIndex == 0
                {
                    answerLabel.text = "別擔心拉！有錢好辦事！"
                }else {
                    answerLabel.text = "已經這麼高收入了，放輕鬆就好，現在是你在挑男人了"
                }
            }
            
        }
        }

        
        


}

