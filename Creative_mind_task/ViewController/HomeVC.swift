//
//  HomeVC.swift
//  Creative_mind_task
//
//  Created by ahmedxiio on 6/25/18.
//  Copyright © 2018 ahmedxiio. All rights reserved.
//

import UIKit
import Parchment

class HomeVC: UIViewController {

    @IBOutlet weak var firstPagination: UIView!
    @IBOutlet weak var tabContent: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    
    var firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    var secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    var thirdViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    override func viewDidLoad() {
    super.viewDidLoad()
        
        setupFirstPagination()
//        setupSecondPagination()
   
}
    @IBAction func indexChanged(_ sender: AnyObject) {
        switch segmentedControl.selectedSegmentIndex
        {
        case 0:
            firstViewController.items = array1
            secondViewController.items = array2
            thirdViewController.items = array3
        case 1:
            firstViewController.items = array4
            secondViewController.items = array5
            thirdViewController.items = array6
        default:
            break
        }
        firstViewController.tableView.reloadData()
        secondViewController.tableView.reloadData()
        thirdViewController.tableView.reloadData()

    }
// firstPagination
    func setupFirstPagination(){
       
        firstViewController.title = "قيد الانتظار"
        secondViewController.title = "تم القبول"
        thirdViewController.title = "تم الالغاء"
        
        firstViewController.items = array1
        secondViewController.items = array2
        thirdViewController.items = array3
        
        // Initialize a FixedPagingViewController and pass
        // in the view controllers.
        let pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController,
            thirdViewController
            ])
        
        // controller and contrain it to the edges of the view.
        addChildViewController(pagingViewController)
        tabContent.addSubview(pagingViewController.view)
        tabContent.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
    }
    let array1 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "1", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
    let array2 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "2", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
    let array3 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "3", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
    let array4 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
    let array5 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
    let array6 = [
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String"),
        CellInfo(img: "type_car", imag0: "my_list_help_accepted_info_help_type", imag1: "my_list_help_accepted_time", imag2: "my_list_help_accepted_info_help_type", imag3: "my_list_help_accepted_accept", lable: "String", lable0: "String", lable1: "String", lable2: "String", lable3: "String")
    ]
}
