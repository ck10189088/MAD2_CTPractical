//
//  Contact.swift
//  PracticalTest
//
//  Created by MAD2_P02 on 5/12/19.
//  Copyright © 2019 MAD2_P02. All rights reserved.
//

import Foundation
import UIKit

class Contact{
    var firstName:String
    var lastName:String
    var photo:UIImage
    var telephone:String
    
    init(fn:String,ln:String,photo:UIImage,tp:String){
        firstName = fn
        lastName = ln
        self.photo = photo
        telephone = tp
    }
    
}
