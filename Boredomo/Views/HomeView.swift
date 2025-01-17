//
//  ContentView.swift
//  Boredomo
//
//  Created by Ajmal Poovanath on 06/01/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                VStack(alignment: .center, spacing: 60.0){
                    Image("Logo")
                        .resizable()
                        .frame(width: 80.0, height: 80.0)
                    
                    VStack(spacing: 25.0){
                        Text("BORED ?")
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.white)
                            .font(.custom("SFPro", size: 60))
                        Text("let's find something to do..")
                            .fontWeight(.light)
                            .multilineTextAlignment(.center)
                            .foregroundStyle(Color.white)
                            .font(.custom("SF Pro", size: 22))
                    }
                }
                .padding(.top, 30.0)
                
                
                Spacer()
                    
                //Find Button 
                Button{
                    print("button pressed")
                }label: {
                    Image("find")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                }
            }
        }
    }
}

#Preview {
    HomeView()
}
