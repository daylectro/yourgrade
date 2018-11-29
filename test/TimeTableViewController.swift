//
//  TimeTableViewController.swift
//  test
//
//  Created by Daniel Tiemor on 22.11.18.
//  Copyright © 2018 Daylectro. All rights reserved.
//

import UIKit

class TimeTableViewController: UIViewController {

    var moduleTimeTable: [String] = []
    var index = 0

    override func viewDidLoad() {
        super.viewDidLoad()

        if let moduleObject = UserDefaults.standard.object(forKey: "SavedArray") {

            moduleTimeTable = (moduleObject as? [String])!

        }

        if let indexSave = UserDefaults.standard.string(forKey: "Mo1Name") {

            if let indexSaveInt = Int(indexSave) {

            Mo1Name.setTitle(moduleTimeTable[indexSaveInt], for: .normal)
            }
        }

        if let indexSave2 = UserDefaults.standard.string(forKey: "Mo2Name") {

            if let indexSaveInt2 = Int(indexSave2) {

                Mo2Name.setTitle(moduleTimeTable[indexSaveInt2], for: .normal)
            }
        }
        if let indexSave3 = UserDefaults.standard.string(forKey: "Mo3Name") {

            if let indexSaveInt3 = Int(indexSave3) {

                Mo3Name.setTitle(moduleTimeTable[indexSaveInt3], for: .normal)
            }
        }
        if let indexSave4 = UserDefaults.standard.string(forKey: "Mo4Name") {

            if let indexSaveInt4 = Int(indexSave4) {

                Mo4Name.setTitle(moduleTimeTable[indexSaveInt4], for: .normal)
            }
        }
        if let indexSave5 = UserDefaults.standard.string(forKey: "Di1Name") {

            if let indexSaveInt5 = Int(indexSave5) {

                Di1Name.setTitle(moduleTimeTable[indexSaveInt5], for: .normal)
            }
        }
        if let indexSave6 = UserDefaults.standard.string(forKey: "Di2Name") {

            if let indexSaveInt6 = Int(indexSave6) {

                Di2Name.setTitle(moduleTimeTable[indexSaveInt6], for: .normal)
            }
        }
        if let indexSave7 = UserDefaults.standard.string(forKey: "Di3Name") {

            if let indexSaveInt7 = Int(indexSave7) {

                Di3Name.setTitle(moduleTimeTable[indexSaveInt7], for: .normal)
            }
        }
        if let indexSave8 = UserDefaults.standard.string(forKey: "Di4Name") {

            if let indexSaveInt8 = Int(indexSave8) {

                Di4Name.setTitle(moduleTimeTable[indexSaveInt8], for: .normal)
            }
        }
        if let indexSave9 = UserDefaults.standard.string(forKey: "Mi1Name") {

            if let indexSaveInt9 = Int(indexSave9) {

                Mi1Name.setTitle(moduleTimeTable[indexSaveInt9], for: .normal)
            }
        }
        if let indexSave10 = UserDefaults.standard.string(forKey: "Mi2Name") {

            if let indexSaveInt10 = Int(indexSave10) {

                Mi2Name.setTitle(moduleTimeTable[indexSaveInt10], for: .normal)
            }
        }
        if let indexSave11 = UserDefaults.standard.string(forKey: "Mi3Name") {

            if let indexSaveInt11 = Int(indexSave11) {

                Mi3Name.setTitle(moduleTimeTable[indexSaveInt11], for: .normal)
            }
        }
        if let indexSave12 = UserDefaults.standard.string(forKey: "Mi4Name") {

            if let indexSaveInt12 = Int(indexSave12) {

                Mi4Name.setTitle(moduleTimeTable[indexSaveInt12], for: .normal)
            }
        }
        if let indexSave13 = UserDefaults.standard.string(forKey: "Do1Name") {

            if let indexSaveInt13 = Int(indexSave13) {

                Do1Name.setTitle(moduleTimeTable[indexSaveInt13], for: .normal)
            }
        }
        if let indexSave14 = UserDefaults.standard.string(forKey: "Do2Name") {

            if let indexSaveInt14 = Int(indexSave14) {

                Do2Name.setTitle(moduleTimeTable[indexSaveInt14], for: .normal)
            }
        }
        if let indexSave15 = UserDefaults.standard.string(forKey: "Do3Name") {

            if let indexSaveInt15 = Int(indexSave15) {

                Do3Name.setTitle(moduleTimeTable[indexSaveInt15], for: .normal)
            }
        }
        if let indexSave16 = UserDefaults.standard.string(forKey: "Do4Name") {

            if let indexSaveInt16 = Int(indexSave16) {

                Do4Name.setTitle(moduleTimeTable[indexSaveInt16], for: .normal)
            }
        }
        if let indexSave17 = UserDefaults.standard.string(forKey: "Fr1Name") {

            if let indexSaveInt17 = Int(indexSave17) {

                Fr1Name.setTitle(moduleTimeTable[indexSaveInt17], for: .normal)
            }
        }
        if let indexSave18 = UserDefaults.standard.string(forKey: "Fr2Name") {

            if let indexSaveInt18 = Int(indexSave18) {

                Fr2Name.setTitle(moduleTimeTable[indexSaveInt18], for: .normal)
            }
        }
        if let indexSave19 = UserDefaults.standard.string(forKey: "Fr3Name") {

            if let indexSaveInt19 = Int(indexSave19) {

                Fr3Name.setTitle(moduleTimeTable[indexSaveInt19], for: .normal)
            }
        }
        if let indexSave20 = UserDefaults.standard.string(forKey: "Fr4Name") {

            if let indexSaveInt20 = Int(indexSave20) {

                Fr4Name.setTitle(moduleTimeTable[indexSaveInt20], for: .normal)
            }
        }

    }

    @IBOutlet weak var modulName: UITextField!

    @IBAction func addModule(_ sender: Any) {

        guard modulName.text != ""
            else {
                return
        }
        guard let modulName1 = modulName.text
            else {
                return
        }
        moduleTimeTable.append(modulName1)

        modulName.text = ""

        UserDefaults.standard.set(moduleTimeTable, forKey: "SavedArray")

    }

    @IBOutlet weak var Mo1Name: UIButton!
    @IBOutlet weak var Mo2Name: UIButton!
    @IBOutlet weak var Mo3Name: UIButton!
    @IBOutlet weak var Mo4Name: UIButton!
    @IBOutlet weak var Di1Name: UIButton!
    @IBOutlet weak var Di2Name: UIButton!
    @IBOutlet weak var Di3Name: UIButton!
    @IBOutlet weak var Di4Name: UIButton!
    @IBOutlet weak var Mi1Name: UIButton!
    @IBOutlet weak var Mi2Name: UIButton!
    @IBOutlet weak var Mi3Name: UIButton!
    @IBOutlet weak var Mi4Name: UIButton!
    @IBOutlet weak var Do1Name: UIButton!
    @IBOutlet weak var Do2Name: UIButton!
    @IBOutlet weak var Do3Name: UIButton!
    @IBOutlet weak var Do4Name: UIButton!
    @IBOutlet weak var Fr1Name: UIButton!
    @IBOutlet weak var Fr2Name: UIButton!
    @IBOutlet weak var Fr3Name: UIButton!
    @IBOutlet weak var Fr4Name: UIButton!

    @IBAction func Mo1Name(_ sender: Any) {

        if moduleTimeTable.count > 0 {

        Mo1Name.setTitle(moduleTimeTable[index], for: .normal)

        UserDefaults.standard.set(index, forKey: "Mo1Name")

        index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }

        }

    }

    @IBAction func Mo2Name(_ sender: Any) {

        if moduleTimeTable.count > 0 {

            Mo2Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mo2Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mo3Name(_ sender: Any) {

        if moduleTimeTable.count > 0 {

            Mo3Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mo3Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }

    }
    @IBAction func Mo4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mo4Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mo4Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Di1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di1Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Di1Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }

        }
    }
    @IBAction func Di2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di2Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Di2Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Di3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di3Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Di3Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Di4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di4Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Di4Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi1Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mi1Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
      
    }
    @IBAction func Mi2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi2Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mi2Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi3Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mi3Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi4Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Mi4Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do1Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Do1Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do2Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Do2Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do3Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Do3Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Do4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do4Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Do4Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Fr1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr1Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Fr1Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Fr2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr2Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Fr2Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Fr3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr3Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Fr3Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Fr4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr4Name.setTitle(moduleTimeTable[index], for: .normal)

            UserDefaults.standard.set(index, forKey: "Fr4Name")

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }





    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
