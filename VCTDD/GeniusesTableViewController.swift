//
//  ViewController.swift
//  VCTDD
//
//  Created by Jorge D. Ortiz Fuentes on 11/1/17.
//  Copyright © 2017 Canonical Examples. All rights reserved.
//

import UIKit

class GeniusesTableViewController: UITableViewController {

    // MARK: - Parameters & Constants

    static let ID = "GeniusesTableViewController"

    // MARK: - Instance variables
    
    var presenter: GeniusesListPresenter?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewReady()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

