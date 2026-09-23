//
//  Usuario.swift
//  DemaReto451_SwiftUI
//
//  Created by José Molina on 22/09/26.
//

import Foundation
extension RegistroUsuario {
    struct Usuario {
        var correo:String = ""
        var contraseña:String = ""
        func validaDatos()->[String]{
            var errores:[String] = []
            if correo.esVacio {
                errores.append("Debes ingresar un correo")
            }
            if contraseña.esVacio {
                errores.append("Debes ingresar una contraseña")
            }
            if !correo.esCorreoValido {
                errores.append("Debes ingresar un correo valido")
            }
            if !contraseña.esLongitudValida{
                errores.append("Debes ingresar una contraseña de al menos 5 caracteres")
            }
            return errores
        }
    }
    
}
