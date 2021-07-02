//
//  CardapioLista.swift
//  Landmarks
//
//  Created by Thales Andrade on 04/06/21.
//

import SwiftUI

struct CardapioLista: View {
    
    var itens = [0,1,2,3,4,5]
    
    var body: some View {
        
        List {
            ForEach((1...10).reversed(), id: \.self) {
                Text("\($0)…")
            }

            Text("Ready or not, here I come!")
        }
    }
}

struct CardapioLista_Previews: PreviewProvider {
    static var previews: some View {
        CardapioLista()
    }
}
