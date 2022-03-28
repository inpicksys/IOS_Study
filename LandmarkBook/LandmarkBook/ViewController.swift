//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Misha Strutinsky on 29.03.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var chosenLandmarkName = ""
    var chosenLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
      
        landmarkNames.append("China Great Wall")
        landmarkNames.append("Fudziama")
        landmarkNames.append("Moscow Kremlin")
        landmarkNames.append("StoneHandje")
        landmarkNames.append("Tadj Mahal")
        landmarkNames.append("Eiffel Tower")
        
      
        landmarkImages.append(UIImage(named: "china_wall.jpg")!)
        landmarkImages.append(UIImage(named: "fudziama.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "stonehandje.jpg")!)
        landmarkImages.append(UIImage(named: "tadj_mahal.jpg")!)
        landmarkImages.append(UIImage(named: "eifel_tower.jpg")!)
        
        navigationItem.title = "Landmark Book"
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
            
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName = landmarkNames[indexPath.row]
        chosenLandmarkImage = landmarkImages[indexPath.row]
        
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let destinationViewController = segue.destination as! ImageViewController
            destinationViewController.selectedLandmarkImage = chosenLandmarkImage
            destinationViewController.selectedLandmarkName = chosenLandmarkName
        }
    }
}

