//Escribir aqui los objetos
/*
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

*/

// EJERCICIO 2 y 3

object galvan { 
    var sueldo = 15000
    method sueldo() { return sueldo} //getter
    method sueldo( _sueldo) {
        sueldo = _sueldo} //setter
    
    var dinero = 0
    method dinero() {
      return dinero
    }
    method dinero(_dinero) {
        if (deuda == 0) {
            dinero = dinero + _dinero
        } else if (deuda > _dinero) {
            deuda = deuda - _dinero
        } else {
            dinero = dinero + _dinero - deuda
            deuda = 0
        }

    }
    
    var deuda = 0
    method deuda() = deuda
    method deuda(_deuda) {
      deuda = deuda + _deuda
    }

    method gastar(_monto) {
        if (_monto >= dinero) {
            deuda = deuda + _monto - dinero
            dinero = 0
        }
        else {
            dinero = dinero - _monto
        }
    }

    
}

object baigorria {
	var empanadasVendidas = 0
	var montoPorEmpanada = 15
	var acumulador = 0
	method sueldo() {
		acumulador = acumulador + (montoPorEmpanada * empanadasVendidas)
		return montoPorEmpanada * empanadasVendidas 
        }
	method montoPorEmpanada(_importe) {
          montoPorEmpanada = _importe
    } //setter

	method venderEmpanadas(cantidad) { 
        empanadasVendidas = empanadasVendidas + cantidad 
        } //setter
	method totalCobrado() {
        return acumulador
        }
	
	method pasarMes() {
		empanadasVendidas = 0
		acumulador = 0
	}

    var dinero = 0
    method dinero() {
      return dinero
    }
    method dinero(_dinero) {
        dinero = _dinero
    }

}


object gimenez {
	var fondo = 300000
	method fondo() {
        return fondo
    }
	method pagarSueldo(empleado) {
		fondo = fondo - empleado.sueldo()
        empleado.dinero( empleado.dinero() + empleado.sueldo() )
    }
}

