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
    @IBOutlet weak var villanoPoder: UILabel?
    @IBOutlet weak var villanoBio: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        

    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        villanoImage?.image = nil
        villanoName?.text = nil
    }
    
    func configureViews(villano:Villano){
        villanoImage?.image = UIImage(named: villano.image ?? "")
        villanoName?.text = villano.name
        villanoPoder?.text = villano.poder
        villanoBio?.text = villano.descripcion
    }

}
