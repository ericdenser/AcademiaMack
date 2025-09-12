//
//  principal.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
import Foundation

public class Principal {
    
    func exibir() {
        
        let newAcademia = Academia(nome: "Academia POO 360")
        let planoMensal = PlanoMensal()
        let planoAnual = PlanoAnual()
        let instrutor1 = Instrutor(nome: "Jamalson", email: "jamalson@gmail.com", especialidade: "Treinos de Perna")
        let instrutor2 = Instrutor(nome: "Yamalson", email: "yamalson@gmail.com", especialidade: "Treinos de Pescoco")
        
        newAcademia.contratarInstrutor(instrutor1)
        newAcademia.contratarInstrutor(instrutor2)
        
        let aluno1 = newAcademia.matricularAluno(nome: "Aurelio", email: "aurelio@gmail.com", matricula: "123", nivel: NivelAluno.iniciante, plano: planoMensal)
        let aluno2 = newAcademia.matricularAluno(nome: "Adauber", email: "adauber@gmail.com", matricula: "456", nivel: NivelAluno.iniciante, plano: planoAnual)
        
        let aulaPersonal = AulaPersonal(nome: "Pescoco", instrutor: instrutor2, aluno: aluno1)
        let aulaColetiva = AulaColetiva(nome: "Perna", instrutor: instrutor1, capacidadeMaxima: 0)
        
        newAcademia.adicionarAula(aulaColetiva)
        newAcademia.adicionarAula(aulaPersonal)
        
        aulaColetiva.inscrever(aluno: aluno1)
        aulaColetiva.inscrever(aluno: aluno2)
        
        let aluno3 = Aluno(nome: "Berilson", email: "berilson@gmail.com", matricula: "777", nivel: NivelAluno.avancado, plano: planoAnual)
        newAcademia.matricularAluno(aluno3)
        
        aulaColetiva.inscrever(aluno: aluno3)
        
        let aluno4 = Aluno(nome: "Cides", email: "cides@gmail.com", matricula: "888", nivel: NivelAluno.avancado, plano: planoAnual)
        newAcademia.matricularAluno(aluno4)
        
        aulaColetiva.inscrever(aluno: aluno4)
        
        newAcademia.listarAulas()
        newAcademia.listarAlunos()
        
        var testArrayAula: [Aula] = []
        testArrayAula.append(aulaColetiva)
        testArrayAula.append(aulaPersonal)
        
        for aula in testArrayAula {
            print(aula.getDescricao())
        }
        
        var testArrayPessoa: [Pessoa] = []
        testArrayPessoa.append(aluno1)
        testArrayPessoa.append(instrutor1)
        
        for pessoa in testArrayPessoa {
            print(pessoa.getDescricao())
        }
        
        let relatorio = newAcademia.gerarRelatorio()
        
        
        print("Total alunos matriculados: \(relatorio.totalAlunos) | Total instrutores: \(relatorio.totalInstrutores) | Total de Aulas:  \(relatorio.totalAulas)")
        
    }
    
}
