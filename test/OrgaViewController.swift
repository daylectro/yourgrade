//
//  OrgaViewController.swift
//  test
//
//  Created by Daniel Tiemor on 24.11.18.
//  Copyright © 2018 Daylectro. All rights reserved.
//

import UIKit
import QuickLook


class OrgaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, QLPreviewControllerDataSource,
        UIImagePickerControllerDelegate, UINavigationControllerDelegate {

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

    public func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == UITableViewCellEditingStyle.delete {

            moduleTimeTable.remove(at: indexPath.row)
            aufzeichnungTableView.reloadData()
        }
    }

    //Get the name of the module
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == self.aufzeichnungTableView {
            let moduleName = moduleTimeTable[indexPath.row]
            handleAufzeichnung(moduleName: moduleName)

        }
    }

    //create a path where the picture goes to and add jpg
    private func imageFilename(moduleName: String) -> String {
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
        return documentsPath.appendingPathComponent(moduleName) + ".jpg"
    }

    //create and url and if the file exist show it with QLPreviewController and if not that use a picker
    private func handleAufzeichnung(moduleName: String) {
        let filename = imageFilename(moduleName: moduleName)
        previewImageFileUrl = URL(fileURLWithPath: filename)
        if FileManager.default.fileExists(atPath: filename) {
            let previewController = QLPreviewController()
            previewController.dataSource = self
            present(previewController, animated: true)
        } else {
            var imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            self.present(imagePicker, animated: true, completion: nil)
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //Preview delegate goes here and i could also add array for more pictures (Array of URL)

    var previewImageFileUrl: URL? = nil

    func numberOfPreviewItems(in controller: QLPreviewController) -> Int {
        return previewImageFileUrl == nil ? 0 : 1
    }

    func previewController(_ controller: QLPreviewController, previewItemAt index: Int) -> QLPreviewItem {
        return previewImageFileUrl! as NSURL
    }

    // Delegate for Imagepicker. If it is clicked, save the file that the ImagePicker took
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            let data = UIImageJPEGRepresentation(pickedImage, 0.85)
            try? data?.write(to: previewImageFileUrl!)
        }
        picker.dismiss(animated: true, completion: nil)
    }

}
