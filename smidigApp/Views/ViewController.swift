//
//  ViewController.swift
//  smidigApp
//
//  Created by Joseph Nimoson on 20/05/2019.
//  Copyright © 2019 Joseph Nimoson. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    @IBOutlet weak var skogenViewBtn: UIButton!
    
     let transition = SlideInTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func didTapMenu(_ sender: Any) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else {return}
        menuViewController.didTapMenuType = {menuType in
            print(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self as? UIViewControllerTransitioningDelegate
        present(menuViewController,animated: true)
    }
    @IBAction func skogenViewClick(_ sender: Any) {
        
      // performSegue(withIdentifier: "showSkogen", sender: nil)
    }
}

extension ViewController: UIViewControllerTransitioningDelegate{
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}

