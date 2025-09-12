//
//  Academia.swift
//  AcademiaMack
//
//  Created by Eric on 10/09/25.
//
class Academia {
    let nome: String
    private(set) var alunosMatriculados: [String: Aluno] = [:]
    private(set) var instrutoresContratados: [String: Instrutor] = [:]
    private var aparelhos: [Aparelho] = []
    private(set) var aulasDisponiveis: [Aula] = []
    
    init(nome: String) {
        self.nome = nome
    }
    
    func adicionarAparelho(_ aparelho: Aparelho) {
        if aparelhos.contains( where: {$0.nomeItem == aparelho.nomeItem }) {
            print("Aparelho ja adicionado!")
            return
        } else {
            aparelhos.append(aparelho)
            print("Aparelho adicionado com sucesso!")
        }
    }
    
    
    func adicionarAula(_ aula: Aula) {
        if aulasDisponiveis.contains( where: {$0.nome == aula.nome }) {
            print("Aula ja adicionada!")
            return
        } else {
            aulasDisponiveis.append(aula)
            print("Aula adicionada com sucesso!")
        }
    }
    
    func contratarInstrutor(_ instrutor: Instrutor) {
        if instrutoresContratados.keys.contains(instrutor.email) {
            print("Instrutor \(instrutor.nome) já contratado!")
            return;
        }
        instrutoresContratados[instrutor.email] = instrutor
        print("Instrutor \(instrutor.nome) contratado com sucesso!")
    }
    
    func matricularAluno(_ aluno: Aluno) {
        if alunosMatriculados.keys.contains(aluno.matricula) {
            print("Não foi possivel matricular o aluno \(aluno.nome) pois a matricula \(aluno.matricula) ja esta sendo utilizada!")
            return;
        }
        alunosMatriculados[aluno.matricula] = aluno
        print("Aluno \(aluno.nome) matriculado com sucesso!")
    }
    
    func matricularAluno(nome: String, email: String, matricula: String, nivel: NivelAluno, plano: Plano) -> Aluno {
        let newAluno = Aluno(nome: nome, email: email, matricula: matricula, nivel: nivel, plano: plano)
        
        matricularAluno(newAluno)
        
        return newAluno
    }
    
    func buscarAluno(porMatricula matricula: String) -> Aluno? {
        if alunosMatriculados.keys.contains(matricula) {
            return alunosMatriculados[matricula]
        }
        return nil
    }
    
    func listarAlunos() {
        print("--- Lista de Alunos Matriculados ---")
        if (alunosMatriculados.isEmpty) {
            print ("Nenhum aluno matriculado")
            return
        }
        
        let alunosOrdenados = alunosMatriculados.values.sorted { $0.nome < $1.nome }
        
        for aluno in alunosOrdenados {
            print(aluno.getDescricao())
        }
        print("-----")
    }
    
    func listarAulas() {
        print("--- Lista de Aulas ---")
        if (aulasDisponiveis.isEmpty) {
            print ("Nenhuma Aula encontrada!")
            return
        }
        for aula in aulasDisponiveis {
            print(aula.getDescricao())
            print("-----")
        }
        
    }
}

