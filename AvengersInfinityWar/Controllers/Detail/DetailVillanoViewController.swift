//
//  DetailVillanoViewController.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 7/12/20.
//

import UIKit

class DetailVillanoViewController: UIViewController {
    
    
    @IBOutlet weak var villanoImage: UIImageView!
    @IBOutlet weak var villanoBio: UITextView!
    @IBOutlet weak var villanoPower: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        self.title = UserDefaults.standard.string(forKey: "villanoName")
        self.villanoImage.image =  UIImage(named: UserDefaults.standard.string(forKey: "villanoImage") ?? "")
        self.villanoPower.text = UserDefaults.standard.string(forKey: "villanoPoder")
        self.villanoBio.text = UserDefaults.standard.string(forKey: "villanoBio")
    }
    
}
