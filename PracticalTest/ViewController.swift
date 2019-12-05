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
        let context = appDelegate.persistentContainer.viewContext
        appDelegate.StoreTestAccount()
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "CDAccount")
        do{
            accountlist = try context.fetch(fetchRequest)
            
            for a in accountlist{
                let email = a.value(forKeyPath: "email") as? String
                let password = a.value(forKeyPath: "password") as? String
                if(txtEmail.text == email && txtPassword.text == password){
                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "GRNavController")
                    present(vc!,animated: false,completion: nil)
                }
            }
        }catch let error as NSError{
            print("Wrong email or password. \(error),\(error.userInfo)")
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

