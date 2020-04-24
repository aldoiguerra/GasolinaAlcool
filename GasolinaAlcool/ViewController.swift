//
//  ViewController.swift
//  GasolinaAlcool
//
//  Created by Aldo Ianelo Guerra on 23/04/20.
//  Copyright © 2020 Aldo Ianelo Guerra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var precoEtanol: UITextField!
  @IBOutlet weak var precoGasolina: UITextField!
  @IBOutlet weak var resultado: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func calcular(_ sender: Any) {
    
    let etanol = ((precoEtanol.text ?? "0") as NSString).doubleValue
    let gasolina = ((precoGasolina.text ?? "0") as NSString).doubleValue
    
    
    
    let proporcao = etanol / gasolina;
    
    if(proporcao < 0.7){
      
      resultado.text = "Compensa o Etanol \(proporcao)."
      
    }else{
      
      resultado.text = "Compensa a Gasolina \(proporcao)."
      
    }
    
    
  }
  
}

