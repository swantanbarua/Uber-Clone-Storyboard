//
//  HomeViewController.swift
//  Uber-Clone-Storyboard
//
//  Created by Swantan Barua on 16/06/23.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - IBOUTLETS
    
    @IBOutlet weak var whereToInnerView: UIView!
    @IBOutlet weak var nowView: UIView!
    
    // MARK: - VIEW CONTROLLER LIFECYCLE METHODS
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        whereToInnerView.layer.cornerRadius = 45
        nowView.layer.cornerRadius = 25
    }
}
