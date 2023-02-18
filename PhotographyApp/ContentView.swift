//
//  ContentView.swift
//  PhotographyApp
//
//  Created by Anderson Sales on 17/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                ExtractedView()
                ScrollView{
                    ForEach(1...10, id: \.self) { index in
                        CardView()
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView: View {
    var body: some View {
        VStack{
            HStack{
                Button(action: {}) {
                    Image(systemName: "camera")
                        .font(.largeTitle)
                        .foregroundColor(.red)
                }
                .foregroundColor(.black)
                Spacer()
                
                Text("PhotoGram")
                    .font(.system(size: 30))
                    .foregroundColor(.green)
                Spacer()
                
                ZStack {
                    Circle().frame(width: 45)
                        .foregroundColor(.cyan)
                    Button(action: {}) {
                        Image(systemName: "person")
                            .font(.largeTitle)
                            .foregroundColor(.yellow)
                    }
                }
            }
            .padding()
        }
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            VStack {
                HStack {
                    Image(systemName: "photo")
                        .font(.largeTitle)
                        .foregroundColor(.blue)
                    VStack(alignment: .leading){
                        Text("aasales")
                            .font(.footnote)
                            .fontWeight(.bold)
                        HStack {
                            Text("Miami")
                                .font(.footnote)
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                            Spacer()
                            Text("Just now")
                                .font(.footnote)
                                .fontWeight(.light)
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .padding()
            }
            Image(systemName: "photo")
                .resizable()
                .frame(height: 400)
                .foregroundColor(.pink)
                .shadow(radius: 10)
            
            HStack{
                Button(action: {}) {
                    HStack{
                        Image(systemName: "heart")
                        Text("10")
                            .font(.caption)
                    }
                    .padding(.leading)
                    .padding(.trailing)
                }
                
                Button(action: {}) {
                    HStack {
                        Image(systemName: "bubble.right")
                        Text("6")
                            .font(.caption)
                    }
                }
                Spacer()
            }
        }
        .padding()
        Spacer()
    }
}
