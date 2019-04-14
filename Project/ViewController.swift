//
//  ViewController.swift
//  Project
//
//  Created by SWUCOMPUTER on 14/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIPickerViewDelegate, UIPickerViewDataSource{
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { //delegate method
        textField.resignFirstResponder()
        return true
    }

    @IBOutlet var pickerPizza: UIPickerView!
    @IBOutlet var etcText: UITextField!
    
    let pizzaArray: Array<String> = ["콤비네이션", "포테이토", "고구마", "치즈", "하와이언"]
    let drinkArray: Array<String> = ["콜라", "사이다", "환타"]
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
    }
    
    func pickerView (_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0 {
            return pizzaArray.count
        }
        else {
            return drinkArray.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return pizzaArray[row]
        }
        else {
            return drinkArray[row]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toOrderView" {
            let destVC = segue.destination as! OrderViewController
            let pizza: String = pizzaArray[self.pickerPizza.selectedRow(inComponent: 0)]
            let drink: String = drinkArray[self.pickerPizza.selectedRow(inComponent: 1)]
            
            var menuString: String = "선택하신 메뉴는 다음과 같습니다.\n< "
            menuString += pizza
            menuString += " 피자, "
            menuString += drink
            menuString += " 음료 >"
            
            let etcString: String? = etcText.text
            
            destVC.info = menuString
            destVC.etc = etcString
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

