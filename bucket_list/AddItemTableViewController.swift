//
//  AddItemTableViewController.swift
//  bucket_list
//
//  Created by Rachel Ng on 1/16/18.
//  Copyright © 2018 Rachel Ng. All rights reserved.
//

import UIKit

class AddItemTableViewController: UITableViewController {
    
    weak var delegate: AddItemTableViewControllerDelegate?
    
    var item: String?
    var indexPath: NSIndexPath?

    @IBOutlet var AddTextField: UITextField!
    
    @IBAction func cancelBtnPressed(_ sender: UIBarButtonItem) {
        print("Cancel")
        delegate?.cancelBtnPressed(by: self)
    }
    
    @IBAction func saveBtnPressed(_ sender: UIBarButtonItem) {
        print("Save")
        let text = AddTextField.text!
        delegate?.itemSaved(by: self, with: text, at: indexPath)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AddTextField.text = item


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
