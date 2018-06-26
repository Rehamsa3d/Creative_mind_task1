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
    
    //Mark:Properities
    @IBOutlet weak var firstPagination: UIView!
    @IBOutlet weak var tabContent: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var pagingViewController : FixedPagingViewController!
    
    var firstViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    var secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    var thirdViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TabsContentVC") as! TabsContentVC
    
    //viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPagination()
    }
    
    //Mark:segmentedControl Action
    @IBAction func indexChanged(_ sender: AnyObject) {
        
        self.pagingViewController.select(index: 1)
        self.pagingViewController.select(index: 0)
        DispatchQueue.main.async {
            
            switch self.segmentedControl.selectedSegmentIndex
            {
            case 0:
                
                self.firstViewController.items = self.array1
                self.secondViewController.items = self.array2
                self.thirdViewController.items = self.array3
                
            case 1:
                
                self.firstViewController.items = self.array4
                self.secondViewController.items = self.array5
                self.thirdViewController.items = self.array6
                
            default:
                break
            }
            self.firstViewController.tableView.reloadData()
            self.secondViewController.tableView.reloadData()
            self.thirdViewController.tableView.reloadData()
            
        }
    }
    
    // Parchment setup & Pagination
    func setupPagination(){
        
        firstViewController.title = "قيد الانتظار"
        secondViewController.title = "تم القبول"
        thirdViewController.title = "تم الالغاء"
        
        firstViewController.items = array1
        secondViewController.items = array2
        thirdViewController.items = array3
        
        // Initialize a FixedPagingViewController and pass
        // in the view controllers.
        pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController,
            thirdViewController
            ])
        
        // controller and contrain it to the edges of the view.
        addChildViewController(pagingViewController)
        tabContent.addSubview(pagingViewController.view)
        tabContent.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
        
       
        pagingViewController.indicatorColor = #colorLiteral(red: 0.5305553789, green: 0.2557595202, blue: 0.5577274446, alpha: 1)
        pagingViewController.selectedTextColor = #colorLiteral(red: 0.5305553789, green: 0.2557595202, blue: 0.5577274446, alpha: 1)

    }
    
    //Mark : data to display
    
    //    array1
    let array1 = [
        CellInfo(img: "type_car", lable: "ابى اروح الهايبر و ما عندي سياره ممكن حد يوديني", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        CellInfo(img: "type_car", lable: "اروح العنوان ده ازاي ", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        CellInfo(img: "type_food", lable: "عندي عزومه حد يساعدني",lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا")
    ]
    
    //array2
    let array2 = [
        CellInfo(img: "type_car", lable: "بدي اسوي شوبنج ", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا")
    ]
    
    //array3
    let array3 = [
        CellInfo(img: "type_car", lable: "عايزه اشتغل 😂",lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        CellInfo(img: "type_car",lable: "اروح العنوان ده ازاي ",lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا")
    ]
    
    //array4
    let array4 = [
        CellInfo(img: "type_food", lable: "عايزه كوره كفر 😅",lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        ]
    
    //array5
    let array5 = [
        CellInfo(img: "type_car", lable: "شابوو يوسف الشريف 👏", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        CellInfo(img: "type_food", lable: "عايزه اشتغل تاني 😭😭", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
            ]
    
    //array6
    let array6 = [
        CellInfo(img: "type_food", lable: "اذكر معني كلمة فزعه وضعها في جمله 🙃", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا"),
        CellInfo(img: "type_food", lable: "عبد الباسط حموده ريمكس 💃", lable0: "منذ ساعه", lable1: "رجال", lable2: "فزعة سياره", lable3: "٣ فزعوا")
    ]
}
