//
//  AulaColetiva.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    var capacidadeMaxima: Int
    
    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int) {
        self.capacidadeMaxima = capacidadeMaxima > 0 ? capacidadeMaxima : 2
        super.init(nome: nome, instrutor: instrutor)
    }
    
    func inscrever(aluno: Aluno) -> Bool {
        
        if (alunosInscritos.count >= capacidadeMaxima) {
            print("Aula ja atingiu capacidade máxima!")
            return false
        }
        
        if alunosInscritos.keys.contains(aluno.matricula) {
            print("Aluno \(aluno.nome) já matriculado!")
            return false
        }
        
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado na aula com sucesso!")
        return true
        
    }
    
    override func getDescricao() -> String {
        return "Numero de vagas ocupadas: \(alunosInscritos.count) | Numero limite de vagas: \(capacidadeMaxima)"
    }
    
}
