//
//  ViewController.swift
//  UIPickerView-Introduction
//
//  Created by Can Balkaya on 12/23/19.
//  Copyright © 2019 Can Balkaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var pickerView: UIPickerView!
    
    let source = ["iPhone", "iPad", "Mac", "Apple Watch", "Apple TV", "iPod"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = source[0]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return source.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
         return source[row]
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label.text = source[row]
    }
}
