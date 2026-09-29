//
//  RegistroUsuario.swift
//  DemaReto451_SwiftUI
//
//  Created by José Molina on 22/09/26.
//

import SwiftUI

struct RegistroUsuario: View {
    @Environment(\.authController) var controladorRegistro
    @State var usuario = Usuario()
    @State var erroresFormulario: [String] = []
    func registroUsuario() async {
        do{
            let response = try await controladorRegistro.registerUser(email: usuario.correo, password: usuario.contraseña)
            print("Usuario registrado \(response)")
        }
        catch {
            print("Error al registar \(error)")
        }
    }

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
                    if erroresFormulario.isEmpty{
                        Task{
                            await registroUsuario()
                        }
                    }
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
