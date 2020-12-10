//
//  DetailHeroeViewController.swift
//  AvengersInfinityWar
//
//  Created by Joan Paredes on 7/12/20.
//

import UIKit

class DetailHeroeViewController: UIViewController {
    
    
    @IBOutlet weak var heroeImage: UIImageView!
    @IBOutlet weak var heroeBio: UITextView!
    @IBOutlet weak var heroePower: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = UserDefaults.standard.string(forKey: "heroeName")
//        self.villanoImage.image = UserDefaults.standard.u
        self.heroePower.text = UserDefaults.standard.string(forKey: "heroePoder")
        self.heroeBio.text = UserDefaults.standard.string(forKey: "heroeBio")
      
        
    }
    
}
