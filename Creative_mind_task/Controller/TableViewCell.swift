//
//  TableViewCell.swift
//  Creative_mind_task
//
//  Created by ahmedxiio on 6/25/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    //Mark:Properities
    
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var lable0: UILabel!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var lable3: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //config
    func config(with data:CellInfo){
        img.image = UIImage(named: data.img!)
        lable.text = data.lable
        lable0.text = data.lable0
        lable1.text = data.lable1
        lable2.text = data.lable2
        lable3.text = data.lable3
        
    }
    
}
