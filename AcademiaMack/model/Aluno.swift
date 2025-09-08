//
//  Aluno.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
class Aluno: Pessoa {
    private var matricula: String
    private var nivel: NivelAluno = NivelAluno.iniciante
    private(set) var plano: Plano
    
    init(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) {
        self.matricula = matricula
        self.nivel = nivel
        self.plano = plano
        
        super.init(nome: nome, email: email)
    }
    
    override func getDescricao() -> String {
        return "Nome: \(nome) | Email: \(email) | Matrícula: \(matricula) | Nivel: \(nivel) | Plano: \(plano)"
    }
}
