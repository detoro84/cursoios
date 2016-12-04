//
//  ViewController.swift
//  Hamgurguesas
//
//  Created by Carlos López on 4/12/16.
//  Copyright © 2016 CarlosLopez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let coleccionDePaises = ColeccionPaises()
    let coleccionDeHamburguesas = ColeccionDeHamburguesas()
    let colores = Colores()

    @IBOutlet weak var etiquetaPais: UILabel!
    @IBOutlet weak var etiquetaHamgurguesa: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func cambiarDatos() {
        etiquetaPais.text = coleccionDePaises.obtenPais()
        etiquetaHamgurguesa.text = coleccionDeHamburguesas.obtenHamburguesa()
        
        let colorAleatorio = colores.regresaColorAleatorio()
        view.backgroundColor = colorAleatorio

    }


}

