//
//  CardRow.swift
//  Landmarks
//
//  Created by Thales Andrade on 04/06/21.
//

import SwiftUI

struct CardRow: View {
    
    var titulo: String = "TITULO"
    var descricao: String = "dasdddad ajksdhdhaskjhdkjh sadhsajkhdasdakldjsakldjkslajdkala alksjdaskljdkl"
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack(alignment: .top)
            {
                VStack(alignment: .leading)
                {
                    Text(titulo).font(.title2)
                    Text(descricao).font(.caption2).lineLimit(2)
                    Text("R$ 1230,00").font(.callout)
                }
                Spacer()
                Image("umbagog").renderingMode(.original)
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(5)
               
            }.padding()
            
            Divider()
            
        }
    }
}

struct CardRow_Previews: PreviewProvider {
    static var previews: some View {
        CardRow()
    }
}
