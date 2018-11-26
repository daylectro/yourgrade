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

    print(modulName1 + " wurde hinzugefügt")

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

        index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }

    }



    @IBAction func Mo2Name(_ sender: Any) {

        if moduleTimeTable.count > 0 {

            Mo2Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mo3Name(_ sender: Any) {

        if moduleTimeTable.count > 0 {

            Mo3Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }

    }
    @IBAction func Mo4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mo4Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Di1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di1Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Di2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di2Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Di3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di3Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Di4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Di4Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi1Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
      
    }
    @IBAction func Mi2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi2Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi3Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Mi4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Mi4Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do1Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do2Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Do3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do3Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Do4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Do4Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Fr1Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr1Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }

    @IBAction func Fr2Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr2Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Fr3Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr3Name.setTitle(moduleTimeTable[index], for: .normal)

            index = index + 1

            if index == moduleTimeTable.count {

                index = 0
            }
        }
    }
    @IBAction func Fr4Name(_ sender: Any) {
        if moduleTimeTable.count > 0 {

            Fr4Name.setTitle(moduleTimeTable[index], for: .normal)

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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
