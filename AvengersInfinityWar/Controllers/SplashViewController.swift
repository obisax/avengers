//
//  SplashViewController.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 4/12/20.
//

import UIKit

class SplashViewController: UIViewController {
    
    private let HOMESEGUE = "SEGUE_TO_HOME"

    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        activityIndicator?.startAnimating()
        
        navegacionView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.isNavigationBarHidden = false
    }
    
    private func navegacionView(){
        
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {[weak self] in
            
            
            let storyboardHome = UIStoryboard(name: "MarvelHome",
                                              bundle: nil)
            if let destination = storyboardHome.instantiateInitialViewController() {
                self?.navigationController?.setViewControllers([destination],
                                                               animated: true)
            }
        }
    }

        
}
