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
    @IBOutlet weak var heroePoder: UILabel?
    @IBOutlet weak var heroeBio: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
      
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        heroeImage?.image = nil
        heroeName?.text = nil
    }
    
    func configureViews(heroe:Heroe){
        heroeImage?.image = UIImage(named: heroe.image ?? "")
        heroeName?.text = heroe.name
        heroePoder?.text = heroe.poder
        heroeBio?.text = heroe.descripcion
    }

}
