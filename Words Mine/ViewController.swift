//
//  ViewController.swift
//  Words Mine
//
//  Created by Warit Karnbunjob on 18/5/2564 BE.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var textHeaderLabel: UILabel!
    @IBOutlet weak var dictionaryTextField: UITextField!
    @IBOutlet weak var dictionaryTable: UITableView!
    
    var dictList = ["Global Dictionary", "Programer", "Medical", "Sport"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Set Text field attribute
        dictionaryTextField.attributedPlaceholder = NSAttributedString(string: "Search your dictionary", attributes: [
            .foregroundColor: UIColor.lightGray,
            .font: UIFont.boldSystemFont(ofSize: 14.0)
        ])
        
        //Set TableView Attribute
        dictionaryTable.separatorStyle = .none
        let nib = UINib(nibName: "DictionaryTableViewCell", bundle: nil)
        dictionaryTable.register(nib, forCellReuseIdentifier: "DictionaryTableViewCell")
        self.dictionaryTable.dataSource = self
        self.dictionaryTable.delegate = self
        
        //Set TextHeaderLabel
        textHeaderLabel.font = UIFont(name: "OpenSans-Bold", size: 32)
    }
    
    //Mark : Setup TableView Datasource and delegate
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DictionaryTableViewCell", for: indexPath) as! DictionaryTableViewCell
        
        cell.titleLabel.text = dictList[indexPath.row]
        return cell
    }


}

