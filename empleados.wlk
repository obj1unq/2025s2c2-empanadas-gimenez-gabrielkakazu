//Escribir aqui los objetos
object galvan { 
    var sueldo = 15000

    //getter
    method sueldo() { 
        return sueldo
    } 
    //setter
    method sueldo( _sueldo) {
	sueldo = _sueldo} 
}

object baigorria {
	var empanadasVendidas = 0

	var montoPorEmpanada = 15
	
    method sueldo() {
    	return montoPorEmpanada * empanadasVendidas 
    }
    //setter
	method venderEmpanadas(cantidad) { 
        empanadasVendidas = empanadasVendidas + cantidad 
    }
    
}

object gimenez {
	var fondo = 300000

	method fondo() {return fondo} //getter
	method pagarSueldo(empleado) {
		fondo = self.fondo - empleado.sueldo()
    }
}

// > baigorria.venderEmpanadas(500)
// > galvan.sueldo(20000)
// > baigorria.venderEmpanadas(300)
// > gimenez.pagarSueldo(baigorria)
// > gimenez.pagarSueldo(galvan)

