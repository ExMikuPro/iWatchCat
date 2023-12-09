//
//  ContentView.swift
//  iWatchCat Watch App
//
//  Created by Hatsune Miku on 2023/12/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "graduationcap")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("ExMikuPro!")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
