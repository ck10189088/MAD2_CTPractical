//
//  GRNavController.swift
//  PracticalTest
//
//  Created by MAD2_P02 on 5/12/19.
//  Copyright © 2019 MAD2_P02. All rights reserved.
//

import Foundation
import UIKit

/*struct CellData{
    var image:UIImage
    var firstName:String
    var lastName:String
}*/

class GRNavController : UITableViewController{
    //var data = [CellData]()
    let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        appDelegate.createDummyContacts()
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "custom")
        //data = [CellData.init(image: alanhayes, firstName: <#T##String#>, lastName: <#T##String#>)]
        // can i use contactList instead of creating a new struct then create array.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        appDelegate.contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "custom") as! CustomCell
        //cell.imgView = appDelegate.contactList[indexPath.row].photo
            
        }
    }

