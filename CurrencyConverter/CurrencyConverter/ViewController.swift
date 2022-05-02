//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Misha Strutinsky on 02.05.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let API_KEY: String = "d77d979524e15f988c8516fe6e13b625"
    @IBOutlet weak var usdLabel: UILabel!
    @IBOutlet weak var uahLabel: UILabel!
    @IBOutlet weak var eurLabel: UILabel!
    @IBOutlet weak var gbpLabel: UILabel!
    @IBOutlet weak var rubLabel: UILabel!
    @IBOutlet weak var jpyLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func GetRatesClicked(_ sender: UIButton) {
        // 1) Request & create Session
        // 2) Response & Data
        // 3) Parsing & JSON Deserialization
        let url = URL(string: "http://data.fixer.io/api/latest?access_key=\(API_KEY)")
        let session = URLSession.shared
        
        // Closure
        let task = session.dataTask(with: url!) { data, response, error in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
              
            } else {
                if data != nil {
                    do {
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! Dictionary<String, Any>
                        
                        // async
                        DispatchQueue.main.async {
                            if let isSuccess = jsonResponse["success"] as? Bool {
                                if let rates = jsonResponse["rates"] as? [String:Any] {
                                    if let usd = rates["USD"] as? Double {
                                        self.usdLabel.text = "USD: \(usd)"
                                    }
                                    if let uah = rates["UAH"] as? Double {
                                        self.uahLabel.text = "uah: \(uah)"
                                    }
                                    if let jpy = rates["JPY"] as? Double {
                                        self.jpyLabel.text = "JPY: \(jpy)"
                                    }
                                    
                                    if let gpb = rates["GBP"] as? Double {
                                        self.gbpLabel.text = "GBP: \(gpb)"
                                    }
                                    
                                    if let eur = rates["EUR"] as? Double {
                                        self.eurLabel.text = "EUR: \(eur)"
                                    }
                                    if let rub = rates["RUB"] as? Double {
                                        self.rubLabel.text = "RUB: \(rub)"
                                    }




                                }
                            }
                        }
                    } catch {
                        print("error")
                    }
                }
            }
             
        }
        
        task.resume()
    }
    
}

