//
//  ViewController.swift
//  UIPikerview
//
//  Created by D7702_10 on 2018. 4. 19..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var dilabel: UILabel!
    
    // 한번호출
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 2
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if component == 0 {
            return 10
        }
        else {
            return 100
        }
        
    }
    //UIPickerViewDelegate method
    // 1000번 호출
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        if component == 0 {
            return "comp01  \(row)"
        } else {
            return "comp02  \(row)"
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0 {
        mylabel.text = "comp01 \(row)"
        } else {
        dilabel.text = "comp02 \(row)"
        }
    }
    
    @IBOutlet weak var myPickerview: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Delegate, DataSource 연결
    myPickerview.dataSource = self
        myPickerview.delegate = self
    }



}

