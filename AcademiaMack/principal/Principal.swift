//
//  principal.swift
//  AcademiaMack
//
//  Created by Eric on 08/09/25.
//
import Foundation

public class Principal {
    
    func exibir() {
        
        let novaPessoa = Pessoa(nome: "eric", email: "ericdenser7@gmail.com")
        print(novaPessoa.getDescricao())
    }
}
