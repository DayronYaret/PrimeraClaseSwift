//
//  ViewController.swift
//  PrimeraClase
//
//  Created by alumno on 19/11/19.
//  Copyright © 2019 ulpgc.romero.dayron. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //El outlet es basicamente para cambiar el valor a mano
    @IBOutlet weak var etiqueta: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var selector: UISegmentedControl!
    
    //Con action estamos poniendo el equivalente a un listener de android es recomendable cambiar el campo que tiene Any al apropiado, porque si no tendriamos que castearlo mas adelante
    @IBAction func switchSelected(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex==0{
        self.view.backgroundColor = UIColor.red
        }else if sender.selectedSegmentIndex==1{
        self.view.backgroundColor = UIColor.blue
        }else if sender.selectedSegmentIndex==2{
            self.view.backgroundColor = UIColor.purple
        }else{
            self.view.backgroundColor = UIColor.white
        }
    }
    
    @IBAction func sliderChange(_ sender: UISlider) {
        let entero = lrintf(sender.value)
        self.etiqueta.text = "El valor del slider es \(entero)"
        var variableOpcional:String?
        variableOpcional="prueba opcional"
        print(variableOpcional!)
        
        //Metemos en las configuraciones de la aplicacion el valor del slider para que al cargar de nuevo se situe donde se dejó
        let defaults = UserDefaults.standard
        defaults.set(entero, forKey: "valorSlider")
        
        
        variableOpcional=nil
        //el guard let es una especie de try catch, donde comprueba si es nil, entonces hace el else
        guard let a = variableOpcional else{
            return
        }
        print(a)
    }
    
    //Este es el equivalente al onCreate u onResume
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaults = UserDefaults.standard
        
        //Le metemos al slider el valor anterior
        self.slider.value = defaults.float(forKey: "valorSlider")
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segunda ventana"{
            let ventana2 = segue.destination as! SegundoViewController
            let texto = etiqueta.text
            let colorElegido  = view.backgroundColor
            ventana2.colorSeleccionado=colorElegido
            ventana2.textoAnterior=texto
            
        }
    }

}

