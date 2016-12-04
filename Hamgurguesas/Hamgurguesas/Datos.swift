//
//  Datos.swift
//  Hamgurguesas
//
//  Created by Carlos López on 4/12/16.
//  Copyright © 2016 CarlosLopez. All rights reserved.
//

import Foundation

class ColeccionPaises {
    let paises : [String] =  ["España", "México", "Francia", "Alemania", "Vietnam", "Japón", "Singapur", "Suecia", "Marruecos", "Estados Unidos", "Noruega", "Canadá", "Costa Rica", "Perú", "Argentina", "Brasil", "Turquía", "China", "India", "Italia", "Rusia"]
    
    func obtenPais() -> String  {
        let posicion = Int(arc4random()) % paises.count
        return paises[posicion]
    }
}

class ColeccionDeHamburguesas {
    let hamburguesas : [String] =  ["Classic Cheeseburger", "Counter Burger", "Cheeseburger (with green chiles on a jalapeño-cheese bun)", "Toro Burger", "Texas Burger", "The Stodg", "Bacon and Bleu Cheese Burger", "Bacon Cheeseburger", "Cheeseburger In Paradise", "Buffalo Burger", "Chop-House Burger (with cheese and bacon)", "1/2 Pound Hamburger", "Bulgogi Burger", "Kobe Beef Burger", "Dirty Love Burger", "Ref Burger", "Momak Classic Burger", "Southwestern Burger", "Big’z Famous No. 1", "Snuffy Burger", "Tiki Burger", "The French Connection Burger", "Brie And Granny Smith Burger"]
    
    func obtenHamburguesa() -> String  {
        let posicion = Int(arc4random()) % hamburguesas.count
        return hamburguesas[posicion]
    }

}
