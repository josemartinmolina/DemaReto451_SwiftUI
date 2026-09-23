//
//  ResumenErrores.swift
//  DemaReto451_SwiftUI
//
//  Created by José Molina on 22/09/26.
//

import SwiftUI

struct ResumenErrores: View {
    var errores:[String] = []
    var body: some View {
        VStack{
            if errores.count > 0 {
                ForEach(errores, id: \.self){ error in
                    Text(error)
                        .foregroundColor(.red)
                }
            }
            else{
                Text("No hay errores")
                    .foregroundColor(.green)
            }
        }
    }
}
#Preview {
    var errores_preview:[String] = ["La contraseña es vacia", "Error 2"]
    ResumenErrores(errores: errores_preview)
    
}

#Preview {
    ResumenErrores()
}
