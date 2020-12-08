//
//  HeroesTableViewCell.swift
//  AvengersInfinityWar
//
//  Created by Joan Paredes on 5/12/20.
//

import UIKit

class HeroesTableViewCell: UITableViewCell {
    
    @IBOutlet weak var heroeCellView: UIView?
    @IBOutlet weak var heroeImage: UIImageView?
    @IBOutlet weak var heroeName: UILabel?
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        heroeCellView?.layer.cornerRadius = 4.0
        heroeCellView?.layer.shadowColor = UIColor.gray.cgColor
        heroeCellView?.layer.shadowOffset = CGSize.zero
        heroeCellView?.layer.shadowOpacity = 0.7
        heroeCellView?.layer.shadowRadius = 4.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        heroeImage?.image = nil
        heroeName?.text = nil
    }
    
    func configureViews(heroe:Heroe){
        heroeImage?.image = UIImage(named: heroe.image ?? "")
        heroeName?.text = heroe.name
        
    }

}
