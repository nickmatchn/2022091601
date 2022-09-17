//
//  ViewController.swift
//  2022091601
//
//  Created by 森川柏旭 on 2022/09/16.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var indeximage: UIImageView!
    
    @IBOutlet weak var momey1input: UITextField!
    @IBOutlet weak var answertext: UILabel!
    @IBOutlet weak var momey2input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changebutton(_ sender: Any) { //圖片轉換
        print("HI")
        let indeximage1 = ["1","2","3","4","5","6"]


        indeximage.image = UIImage(named:String(Int.random(in: 0..<indeximage1.count)-1))
        view.endEditing(true)
    }
    
    @IBAction func answerbutton(_ sender: Any) {  //試算的程式
        if momey1input != nil, momey2input != nil {
            let momey1 = momey1input.text!
            let momey2 = momey2input.text!
            let answer3 = Double(momey2)! - Double(momey1)!
            answertext.text = String(answer3)
            view.endEditing(true)
        }

        
    }
    
    @IBAction func cexelbutton(_ sender: Any) { //試算的程式取消重輸入
        momey1input.text = ""
        momey2input.text = ""
        answertext.text = ""
        
    }
}

