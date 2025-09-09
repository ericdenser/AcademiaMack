//
//  AulaPersonal.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
class AulaPersonal: Aula {
    var aluno: Aluno
    
    init(nome: String, instrutor: Instrutor, aluno: Aluno) {
        self.aluno = aluno
        
        super.init(nome: nome, instrutor: instrutor)
    }
    
    override func getDescricao() -> String {
        return "Aula de \(nome) do instrutor \(instrutor.nome) com o aluno \(aluno.nome)"
    }
}
