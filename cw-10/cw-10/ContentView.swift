//
//  ContentView.swift
//  cw-10
//
//  Created by ahmad alburaimi on 04/01/2021.
//

import SwiftUI

struct ContentView: View {
    enum f {
        case Happy, Sad, Meh, Fine
    }
    @State var s=""
    
    func check(feeling : f){
        if feeling==f.Happy {
            s="Happy"
        }else if feeling==f.Fine{
            s="Fine"
        }else if feeling==f.Meh{
            s="Meh"
        }else{
            s="Sad"
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Text("I feel \(s)")
                HStack{
                    Text("😁").onTapGesture {
                        check(feeling: .Happy)
                    }
                    Text("😔").onTapGesture {
                        check(feeling: .Sad)
                    }
                    Text("😒").onTapGesture {
                        check(feeling: .Meh)
                    }
                    Text("😇").onTapGesture {
                        check(feeling: .Fine)
                    }
                }.padding()
            }.navigationTitle("MoodCheck")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
