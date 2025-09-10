//
//  principal.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
import Foundation

public class Principal {
    
    func exibir() {
//        print("Bem vindo")
//        let nome = lerString(prompt: "Informe seu nome")
//        let email = lerString(prompt: "Informe seu email")
//        let novaPessoa = Pessoa(nome: nome, email: email)
//        print(novaPessoa.getDescricao())
//        
//        for opcao in NivelAluno.allCases {
//            print(opcao)
//        }
        
        
        //testando novas implementacoes
        let newPlano = PlanoAnual()
        let newInstrutor = Instrutor(nome: "Japa mack", email: "Japamackmack@mack", especialidade: "Cortar sushi")
        let newAluno = Aluno(nome: "Bordou", email: "Bordoumack@mackmack", matricula: "123", nivel: NivelAluno.iniciante, plano: newPlano)
        let newAluno2 = Aluno(nome: "Eric", email: "Ericumack@mackmack", matricula: "321", nivel: NivelAluno.iniciante, plano: newPlano)
        let newAulaColetiva = AulaColetiva(nome: "Aula de sushi", instrutor: newInstrutor)
        
        newAulaColetiva.inscrever(aluno: newAluno)
        newAulaColetiva.inscrever(aluno: newAluno2)
        newAulaColetiva.inscrever(aluno: newAluno2)
        print(newAulaColetiva.getDescricao())
        print(newAulaColetiva.instrutor.getDescricao())
        
        let newAcademia = Academia(nome: "AcademiaMack")
        newAcademia.contratarInstrutor(newInstrutor)
        newAcademia.contratarInstrutor(newInstrutor)
        newAcademia.matricularAluno(newAluno)
        newAcademia.matricularAluno(nome: "Arthur", email: "Xucreza@gmail", matricula: "333", nivel: NivelAluno.avancado, plano: newPlano)
        newAcademia.listarAulas()
        newAcademia.listarAlunos()
        newAcademia.buscarAluno(porMatricula: "123")
        print(newPlano.calcularMensalidade())
    }
    
    
    
    
    
    
    
    
//    func lerString(prompt: String) -> String {
//        while true {
//            print(prompt)
//            if let input = readLine(), !input.isEmpty {
//                return input
//            } else {
//                print("Erro ao processar entrada, tente novamente")
//            }
//        }
//    }
//    
//    func lerDouble(prompt: String) -> Double {
//        while true {
//            print(prompt)
//            if let input = readLine(), let num = Double(input) {
//                if (num > 0) {
//                    return num
//                } else {
//                   print("Erro ao processar entrada, insira um double válido! (use '.' para casas decimais)")
//                }
//                
//            }
//        }
//    }
//    
//    func lerInt(prompt: String) -> Int {
//        while true {
//            print(prompt)
//            if let input = readLine(), let num = Int(input) {
//                if (num > 0) {
//                    return num
//                } else {
//                   print("Erro ao processar entrada, insira um inteiro válido!")
//                }
//                
//            }
//        }
//    }
}
