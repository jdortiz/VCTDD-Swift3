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

    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewReady()
    }

    // MARK: - Table view delegate

    override func tableView(_ tableView: UITableView, numberOfRowsInSection: Int) -> Int {
        return 7
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GeniusTableViewCellID", for: indexPath)
        return cell
    }
}

