//
//  ContentView.swift
//  Shared
//
//  Created by Simone Anile on 29/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Applicazione")
                .font(.title)
                .foregroundColor(Color.red)
                .padding([.top, .leading, .trailing])
            Text("Swift")
                .font(.subheadline)
                .padding([.leading, .bottom, .trailing])
            Button("Premi"){
                showAlert = true
            }
            .padding(.all)
            .alert("Prova", isPresented: $showAlert) {
                Button("OK", role: .cancel){}
            }
            
        }
        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color.green/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}
