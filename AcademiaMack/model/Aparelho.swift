//
//  Aparelho.swift
//  Plano.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
class Aparelho: Manutencao {
    var nomeItem: String
    var dataUltimaManutencao: String = "Nenhuma"

    
    init(nomeItem: String) {
        self.nomeItem = nomeItem
    }
    
    func realizarManutencao() -> Bool {
        print("Iniciando manutencao...")
        self.dataUltimaManutencao = "30/08/2025"
        print("Manutencao realizada com sucesso! A data de ultima manutencao foi atualizada para \(dataUltimaManutencao)")
        return true

    }
}
