//
//  MenuViewController.swift
//  Nordvaest
//
//  Created by Joseph Nimoson on 30/05/2019.
//  Copyright © 2019 Joseph Nimoson. All rights reserved.
//

import UIKit

enum MenuType: Int {
    case Hjem
    case innstillinger
    case LoggUt
}

class MenuViewController: UITableViewController {
    
 
        var didTapMenuType: ((MenuType) -> Void)?
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let menuType = MenuType(rawValue: indexPath.row) else {return}
        dismiss(animated: true) { [weak self] in
            print("Dismissing: \(menuType)")
            self?.didTapMenuType?(menuType)
        }
    }
}
