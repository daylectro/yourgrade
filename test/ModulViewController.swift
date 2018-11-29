//
//  ModulViewController.swift
//  test
//
//  Created by Daniel Tiemor on 13.11.18.
//  Copyright © 2018 Daylectro. All rights reserved.

//Hatte eine Idee, um die Zahlen nicht eintippen zu müssen, aber konnte die Idee nicht zuende führen

import UIKit

class ModulViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    


    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var gradePicker: UIPickerView!
    
    var grades: [Double] = [1.0, 1.3, 1.7, 2.0, 2.3, 2.7, 3.0, 3.3, 3.7, 4.0]
    
    var module: Modul?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let module = module else { return }
        titleTextField.text = module.title
        if let index = grades.index(of: module.grade) {
            gradePicker.selectRow(index, inComponent: 0, animated: false)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
       
        return grades.count
    
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return String(grades[row])
        
    }

}
