//
//  PlanoMensal.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
class PlanoMensal: Plano {
    
    init() {
        super.init(nome: "Plano Mensal")
    }
    
    override func calcularMensalidade() -> Double {
        return 120.0
    }
}
