//
//  ViewController.swift
//  PracticalTest
//
//  Created by MAD2_P02 on 3/12/19.
//  Copyright © 2019 MAD2_P02. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func btnLogin(_ sender: Any) {
        var accountlist:[NSManagedObject] = []
        
        let appDelegate = (UIApplication.shared.delegate) as! AppDelegate
        appDelegate.StoreTestAccount()
        
        let fetchRequest = NSFetchRequest<NSManagedObject>
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "")
        present(vc!,animated: false,completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

