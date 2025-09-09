//
//  manutencao.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
protocol Manutencao {
    var nomeItem: String { get }
    var dataUltimaManutencao: String { get }
    
    func realizarManutencao() -> Bool
}
