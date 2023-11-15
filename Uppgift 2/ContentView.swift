//
//  ContentView.swift
//  Uppgift 2
//
//  Created by Anton Fahlstedt on 2023-11-14.
//

import SwiftUI

struct ContentView: View {
    
    
    //Variabel för inmatning i textruta
    @State var Groc = ""
    
    //Tom lista för matvaror
    @State var groc_list = [String]()
    
    var body: some View {
        
    
        VStack {
            
            HStack {
                
                TextField("Produkt", text: $Groc)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .padding(.all)


    
                Button(action: {
                    groc_list.append(Groc)
                    Groc = ""
                }){
                    Text("Lägg till")
                        .font(.system(size: 18, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                        .frame(width: 150, height: 50)
                        .background(
                            Color.blue
                                .cornerRadius(20))
                    
                .padding(.all)
                }
            
            }
        


        
            
                List(groc_list, id: \.self) {produkt in
                    Text(produkt)
                        .padding(.all)
                    
                
                    
                }
                
        
            }
            Button(action: {
                groc_list.removeAll()
            }){
                Text("Nollställ")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(
                        Color.red
                            .cornerRadius(20))
                    .padding(.all)
            }

        }

    }

#Preview {
    ContentView()
}
