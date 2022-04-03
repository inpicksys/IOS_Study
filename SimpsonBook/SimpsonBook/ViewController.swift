//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Misha Strutinsky on 03.04.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    var simpsons = [Simpson]()
    var chosenSimpson: Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        tableview.delegate = self
        
        // Simpson Objects
        let homer = Simpson(simpsonName: "Homer Simpson", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        let bart = Simpson(simpsonName: "Bart Simpson", simpsonJob: "Pupil", simpsonImage: UIImage(named: "bart")!)
        
        let marge = Simpson(simpsonName: "Marge Simpson", simpsonJob: "Home wife", simpsonImage: UIImage(named: "marge")!)
        
        let maggie = Simpson(simpsonName: "Maggie Simpson", simpsonJob: "Child Baby", simpsonImage: UIImage(named: "maggie")!)
        
        let liza = Simpson(simpsonName: "Liza Simpson", simpsonJob: "Pupil", simpsonImage: UIImage(named: "lisa")!)
        let burns = Simpson(simpsonName: "Mongomery Burns", simpsonJob: "Nuclear Factory Director", simpsonImage: UIImage(named: "burns")!)
        
        simpsons.append(homer)
        simpsons.append(bart)
        simpsons.append(marge)
        simpsons.append( maggie)
        simpsons.append(liza)
        simpsons.append(burns)
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsons[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsViewController" {
            let destination = segue.destination as! DetailsViewController
            destination.selectedSimpson = chosenSimpson
        }
    }
}

