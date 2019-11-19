//
//  ViewControllerSegundoViewController.swift
//  PrimeraClase
//
//  Created by alumno on 19/11/19.
//  Copyright © 2019 ulpgc.romero.dayron. All rights reserved.
//

import UIKit

class SegundoViewController: UIViewController {

    var colorSeleccionado: UIColor?
    var textoAnterior:String?
    
    @IBOutlet weak var etiqueta2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=colorSeleccionado!
        etiqueta2.text=textoAnterior!
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
