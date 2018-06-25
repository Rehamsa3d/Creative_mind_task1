//
//  TabsContentVC.swift
//  Creative_mind_task
//
//  Created by ahmedxiio on 6/25/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit

class TabsContentVC: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
var items:[CellInfo] = []
    //        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
//        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
//        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
//        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }

    func displayContent() {
        
    }

}
extension TabsContentVC:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
        
        
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        TableViewCell
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? TableViewCell {
            
            let item = items[indexPath.row]
            cell.config(with: item)

           
            return cell
        }
        return UITableViewCell()
    }
    }
