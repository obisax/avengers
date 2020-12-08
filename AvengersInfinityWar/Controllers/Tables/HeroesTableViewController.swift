//
//  HeroesTableViewController.swift
//  AvengersInfinityWar
//
//  Created by Humberto Franco Paredes Chaupis on 2/12/20.
//

import UIKit

class HeroesTableViewController: UIViewController {
    
    @IBOutlet weak var herotableView: UITableView?
    
    private let heroeRepository = HeroeRepository()
    private var heroes: Heroes = []
    
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        loadData()
        
        herotableView?.register(UINib(nibName: "HeroeCellView", bundle: nil), forCellReuseIdentifier:"HeroeCellView")
        herotableView?.dataSource = self
        herotableView?.delegate = self

    }
    
    
    func heroe(at indexPath: IndexPath) -> Heroe? {
        if(indexPath.row < heroes.count) {
            return heroes[indexPath.row]
        } else {
            return nil
        }
    }


    private func loadData(){
        heroes = heroeRepository.superHeroeContent
    }
}

extension HeroesTableViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let heroe = heroe(at: indexPath){
            performSegue(withIdentifier: "SEGUE_FROM_DETAIL_HEROE", sender: heroe)
            
        }
    }
    
}
extension HeroesTableViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = herotableView?.dequeueReusableCell(withIdentifier: "HeroeCellView", for: indexPath) as? HeroesTableViewCell
        
        if let heroe = heroe(at: indexPath){
            cell?.configureViews(heroe: heroe)
        }
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150.0
    }
    
    


}
