//
//  SchnittViewController.swift
//  test
//
//  Created by Daniel Tiemor on 13.11.18.
//  Copyright © 2018 Daylectro. All rights reserved.
//

import UIKit

struct Modul {
    
    let title : String
    var grade : Double
    
}


class SchnittViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    var kurse: [Modul] = [Modul(title: "Deutsch", grade: 1), Modul(title: "Mathe", grade: 1), Modul(title: "Englisch", grade: 1)]
    
    //@IBOutlet weak var average: UILabel!
    @IBOutlet weak var neuerSchnitt: UILabel!
    
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var grade: UITextField!
    
    @IBAction func add(_ sender: Any) {
        
        //Guard is ilke if statement
        guard input.text != "" && grade.text != ""
            else {
                return
            }
        guard let courseTitle = input.text,
            let courseGradeText = grade.text,
            let courseGrade = Double(courseGradeText)
                else {
                    return
                    }
        
        kurse.append(Modul(title: courseTitle, grade: courseGrade))
        myTableView.reloadData()

        input.text = ""
        grade.text = ""
        
        neuerSchnitt.text = "\(notenSchnitt(kurse: kurse))"

        //UserDefaults.standard.set(kurse, forKey: "SavedKurse")

    }
    
    func notenSchnitt (kurse: [Modul]) -> Double {
        
        var sum: Double = 0
        for module in kurse {
            sum += module.grade
        }
        var schnitt = sum / Double(kurse.count)

        return schnitt
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return kurse.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "cell")
        
        let module = kurse[indexPath.row]
        cell.textLabel?.text = module.title
        cell.detailTextLabel?.text = String(module.grade)
        
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        myTableView.reloadData()
        
    }
        
        
    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == UITableViewCellEditingStyle.delete {
            
           kurse.remove(at: indexPath.row)
            myTableView.reloadData()
        }
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let module = kurse[indexPath.row]
        presentModulViewController(module: module)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       /* if let kurseObject = UserDefaults.standard.object(forKey: "SavedKurse") {

            kurse = (kurseObject as? [Modul])!
        } */
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func presentModulViewController(module: Modul) {
        //get viewcontroller from the storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let modulViewController = storyboard.instantiateViewController(withIdentifier: "ModulViewController") as? ModulViewController else { return }
        
        //set its module
        modulViewController.module = module
        
        //show the ViewController to the user
        navigationController?.pushViewController(modulViewController, animated: true)
    }
    
}


