//
//  CustomCell.swift
//  PracticalTest
//
//  Created by MAD2_P02 on 5/12/19.
//  Copyright © 2019 MAD2_P02. All rights reserved.
//

import Foundation
import UIKit

class CustomCell : UITableViewCell{
    var img : UIImage
    var fn : String
    var ln : String
    
    var imgView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var txtView: UITextView = {
        var textview = UITextView()
        textview.translatesAutoresizingMaskIntoConstraints = false
        return textview
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(imgView)
        self.addSubview(txtView)
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
