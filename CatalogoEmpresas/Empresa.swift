//
//  Empresa.swift
//  CatalogoEmpresas
//
//  Created by Greiziele Lasaro Pereira de Godoy on 28/03/21.
//

import Foundation

class Empresa: NSObject {
    var name: String!
    var employNumber: Int!
    
    init(name: String, employNumber: Int) {
        self.name = name
        self.employNumber = employNumber
    }
}
