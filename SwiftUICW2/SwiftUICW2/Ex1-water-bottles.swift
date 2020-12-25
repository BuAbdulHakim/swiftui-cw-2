//
//  ContentView.swift
//  SwiftUICW2
//
//  Created by Omar Alibrahim on 12/19/20.
//  Copyright: Kuwait Codes 2020 code.kw
import SwiftUI

struct Exercise1: View {
    @State var name =  ""
    @State var num = 0
    var body: some View {
        ZStack {
            Image("charter")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack(alignment: .center) {
                Text("عهدة الماء 🚰")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
//                ADD THE CODE HERE
            
                    TextField("أكتب اسمك هنا", text: $name) // don't foregt the $ for the var. to be a binding string
                    
                    Stepper("كم بطلا من الماء تريدأن تتعهد بأن تشرب؟", value: $num, in: 1...122)
                Spacer()
                    Text("أتعهد أنا , \(name) أن أشرب \(num) أكواباً من الماء يوميا والله على ما اقول شهيد")
                        .font(.system(size: 35))

                
                
                
                Spacer()        
            }.padding()
        }
    }
}

struct Exercise1_Previews: PreviewProvider {
    static var previews: some View {
        Exercise1()
    }
}
