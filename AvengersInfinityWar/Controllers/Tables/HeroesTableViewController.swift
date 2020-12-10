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
        self.navigationController?.navigationBar.topItem?.title = "SuperHeroe"
        
        
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
            UserDefaults.standard.set(heroe.name, forKey: "heroeName")
            UserDefaults.standard.set(heroe.image, forKey: "heroeImage")
            UserDefaults.standard.set(heroe.poder, forKey: "heroePoder")
            UserDefaults.standard.set(heroe.descripcion, forKey: "heroeBio")
            
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
    

    
    


}
