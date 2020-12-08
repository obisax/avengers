//
//  VillanosTableViewCell.swift
//  AvengersInfinityWar
//
//  Created by Joan Paredes on 5/12/20.
//

import UIKit

class VillanosTableViewCell: UITableViewCell {

    @IBOutlet weak var villanoCellView: UIView?
    @IBOutlet weak var villanoImage: UIImageView?
    @IBOutlet weak var villanoName: UILabel?
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        villanoCellView?.layer.cornerRadius = 4.0
        villanoCellView?.layer.shadowColor = UIColor.gray.cgColor
        villanoCellView?.layer.shadowOffset = CGSize.zero
        villanoCellView?.layer.shadowOpacity = 0.7
        villanoCellView?.layer.shadowRadius = 4.0
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        villanoImage?.image = nil
        villanoName?.text = nil
    }
    
    func configureViews(villano:Villano){
        villanoImage?.image = UIImage(named: villano.image ?? "")
        villanoName?.text = villano.name
        
    }

}
