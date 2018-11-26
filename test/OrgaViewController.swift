//
//  OrgaViewController.swift
//  test
//
//  Created by Daniel Tiemor on 24.11.18.
//  Copyright © 2018 Daylectro. All rights reserved.
//

import UIKit

class OrgaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var klausurenTableView: UITableView!
    @IBOutlet weak var sprechstundeTableView: UITableView!
    @IBOutlet weak var aufzeichnungTableView: UITableView!

    var moduleTimeTable: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        if let moduleObject = UserDefaults.standard.object(forKey: "SavedArray") {

            moduleTimeTable = (moduleObject as? [String])!

        }

    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        var count:Int?

        if tableView == self.klausurenTableView {
            count = moduleTimeTable.count
        }

        if tableView == self.sprechstundeTableView {
            count =  moduleTimeTable.count
        }

        if tableView == self.aufzeichnungTableView {
            count =  moduleTimeTable.count
        }

        return count!



    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "Cell")


        cell.textLabel?.text = moduleTimeTable[indexPath.row]
        

        return cell
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
