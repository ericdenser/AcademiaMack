//
//  PlanoAnual.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
class PlanoAnual: Plano {
    
    override init(nome: String) {
        super.init(nome: nome)
    }
    
    override func calcularMensalidade() -> Double {
        return ((12 * 120.0) * 0.8) / 12
    }
    
}
