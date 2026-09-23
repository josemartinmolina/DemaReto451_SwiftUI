//
//  RegistroUsuario.swift
//  DemaReto451_SwiftUI
//
//  Created by José Molina on 22/09/26.
//

import SwiftUI

struct RegistroUsuario: View {
    @State var usuario = Usuario()
    @State var erroresFormulario: [String] = []
    var body: some View {
        VStack{
            Text("Registro del usuario")
                .font(Font.largeTitle.bold())
                .foregroundColor(.blue)
            Form{
                TextField("Correo", text: $usuario.correo)
                SecureField("Contraseña", text:$usuario.contraseña)
                Button("Registrarse"){
                    erroresFormulario = usuario.validaDatos()
                }
            if erroresFormulario.count > 0{
                    ResumenErrores(errores: erroresFormulario)
                }
            }
        }
    }
}

#Preview {
    RegistroUsuario()
}
