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
    @IBOutlet weak var secondPagination: UIView!
    
    @IBOutlet weak var tabContent: UIView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
        setupFirstPagination()
//        setupSecondPagination()
   
}
// firstPagination
    func setupFirstPagination(){
        
        let firstViewController = TabsContentVC()
        let secondViewController = TabsContentVC()
        
        firstViewController.title = "الاخرون"
        secondViewController.title = "فزعاتي"
        
        // Initialize a FixedPagingViewController and pass
        // in the view controllers.
        let pagingViewController = FixedPagingViewController(viewControllers: [
            firstViewController,
            secondViewController
            ])
        
        // Make sure you add the PagingViewController as a child view
        // controller and contrain it to the edges of the view.
        addChildViewController(pagingViewController)
        firstPagination.addSubview(pagingViewController.view)
        firstPagination.constrainToEdges(pagingViewController.view)
        pagingViewController.didMove(toParentViewController: self)
    }
    
//    func setupSecondPagination(){
//
//
//        let firstViewController = TabsContentVC()
//        let secondViewController = TabsContentVC()
//        let thirdViewController = TabsContentVC()
//
//
//        firstViewController.title = "قيد الانتظار"
//        secondViewController.title = "تم القبول"
//        thirdViewController.title = "تم الالغاء"
//
//
//
//        //        firstViewController.data = myFirstArray
//        //        secondViewController.data = mySecondArray
//        //        thirdViewController.data = myThirdArray
//
//
//        // in the view controllers.
//        let pagingViewController = FixedPagingViewController(viewControllers: [
//            firstViewController,
//            secondViewController,
//            thirdViewController
//            ])
//        // Make sure you add the PagingViewController as a child view
//        // controller and contrain it to the edges of the view.
//        addChildViewController(pagingViewController)
//        secondPagination.addSubview(pagingViewController.view)
//        secondPagination.constrainToEdges(pagingViewController.view)
//        pagingViewController.didMove(toParentViewController: self)
//    }
}
