//
//  TableViewCell.swift
//  Creative_mind_task
//
//  Created by ahmedxiio on 6/25/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lable: UILabel!
    @IBOutlet weak var imag0: UIImageView!
    @IBOutlet weak var imag1: UIImageView!
    @IBOutlet weak var imag2: UIImageView!
    @IBOutlet weak var imag3: UIImageView!
    @IBOutlet weak var lable0: UILabel!
    @IBOutlet weak var lable1: UILabel!
    @IBOutlet weak var lable2: UILabel!
    @IBOutlet weak var lable3: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    func config(with data:CellInfo){
        img.image = UIImage(named: data.img!)
        imag0.image = UIImage(named: data.imag0!)
        imag1.image = UIImage(named: data.imag1!)
        imag2.image = UIImage(named: data.imag2!)
        imag3.image = UIImage(named: data.imag3!)
        lable.text = data.lable
        lable0.text = data.lable0
        lable1.text = data.lable1
        lable2.text = data.lable2
        lable3.text = data.lable3
        
    }
    
}
