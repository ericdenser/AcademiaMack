//
//  Pessoa.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
class Pessoa {
    private(set) var nome: String
    private(set) var email: String
    
    init(nome: String, email: String) {
        self.nome = nome
        self.email = email
    }
    
    public func getDescricao() -> String {
        return "Nome: \(nome) | Email: \(email)"
    }
}
