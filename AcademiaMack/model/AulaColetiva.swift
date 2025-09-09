//
//  AulaColetiva.swift
//  AcademiaMack
//
//  Created by Eric on 09/09/25.
//
class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno]
    var capacidadeMaxima = 25
    
    init(nome: String, instrutor: Instrutor, aluno: Aluno, capacidadeMaxima: Int) {
        self.capacidadeMaxima = capacidadeMaxima
        self.alunosInscritos = [aluno.matricula: aluno]
        
        super.init(nome: nome, instrutor: instrutor)
    }
    
    func inscrever(aluno: Aluno) -> Bool {
        
        if (alunosInscritos.count >= 25) {
            print("Aula ja atingiu capacidade máxima!")
            return false
        }
        
        for (key, _) in alunosInscritos {
            if (key == aluno.matricula) {
                print("Aluno \(aluno.nome) já matriculado!")
                return false
            }
        }
        alunosInscritos[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso!")
        return true
        
    }
    
    override func getDescricao() -> String {
        return "Numero de vagas ocupadas: \(alunosInscritos.count) | Numero limite de vagas \(capacidadeMaxima)"
    }
    
}
