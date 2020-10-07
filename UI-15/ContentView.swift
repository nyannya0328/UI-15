//
//  ContentView.swift
//  UI-15
//
//  Created by にゃんにゃん丸 on 2020/10/07.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
       Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Home : View {
    
    
    @State var models = [
        model.init(id: 0, modelname: "Nike_Air_Zoom_Pegasus_36.usdz")
    
    
    ]
    
    
    @State var index = 0
    var body: some View{
        
        VStack{
            
            
            SceneView(scene: SCNScene(named: models[index].modelname), options: [.autoenablesDefaultLighting,.allowsCameraControl])
            
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            
                Spacer(minLength: 0)
            
            
            
        }
        
    }
}







struct model : Identifiable {
    var id : Int
    var modelname : String
}
