//
//  DetailHeroeViewController.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 7/12/20.
//

import UIKit

class DetailHeroeViewController: UIViewController {
    
    
    @IBOutlet weak var heroeImage: UIImageView!
    @IBOutlet weak var heroeBio: UITextView!
    @IBOutlet weak var heroePower: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = UserDefaults.standard.string(forKey: "heroeName")
        self.heroeImage.image =  UIImage(named: UserDefaults.standard.string(forKey: "heroeImage") ?? "")
        self.heroePower.text = UserDefaults.standard.string(forKey: "heroePoder")
        self.heroeBio.text = UserDefaults.standard.string(forKey: "heroeBio")
      
        
    }
    
}
