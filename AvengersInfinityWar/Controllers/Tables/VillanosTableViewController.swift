//
//  VillanosTableViewController.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 2/12/20.
//

import UIKit

class VillanosTableViewController: UIViewController {

    @IBOutlet weak var viltableView: UITableView?
    
    private let villanoRepository = VillanoRepository()
    private var villanos: Villanos = []
    
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadData()
        
        viltableView?.register(UINib(nibName: "VillanoCellView", bundle: nil), forCellReuseIdentifier: "VillanoCellView")
        viltableView?.dataSource = self
        viltableView?.delegate = self
        
     

    }

    
    func villano(at indexPath: IndexPath) -> Villano? {
        if(indexPath.row < villanos.count) {
            return villanos[indexPath.row]
        } else {
            return nil
        }
    }


    private func loadData(){
        villanos = villanoRepository.villanoContent 
    }
}

extension VillanosTableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let villano = villano(at: indexPath){
            performSegue(withIdentifier: "SEGUE_FROM_DETAIL_VILLANO", sender: villano)
            
        }
    }
    
}
extension VillanosTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return villanos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = viltableView?.dequeueReusableCell(withIdentifier: "VillanoCellView", for: indexPath) as? VillanosTableViewCell
        
        if let villano = villano(at: indexPath){
            cell?.configureViews(villano: villano)
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    
}


