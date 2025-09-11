//
//  AulaColetiva.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    let capacidadeMaxima: Int
    
    override init(nome: String, instrutor: Instrutor) {
        capacidadeMaxima = 3
        super.init(nome: nome, instrutor: instrutor)
    }
    
    func inscrever(aluno: Aluno) -> Bool {
        
        if (alunosInscritos.count >= 3) {
            print("Aula ja atingiu capacidade máxima!")
            return false
        }
        
        if alunosInscritos.keys.contains(aluno.matricula) {
            print("Aluno \(aluno.nome) já matriculado!")
            return false
        }
        
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso!")
        return true
        
    }
    
    override func getDescricao() -> String {
        return "Numero de vagas ocupadas: \(alunosInscritos.count) | Numero limite de vagas: \(capacidadeMaxima)"
    }
    
}
