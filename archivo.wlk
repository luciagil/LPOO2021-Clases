class Agente{
	var codigo
	var energia
	var orden_de_entrega = []
	var ubicacion
	
	method desplazarse(destino){
		if(energia >= 2){
			ubicacion = destino
			energia = energia - 1
			return "LLegue"
			}
			else{
				return "Necesito ir a al plaza para descanzar"
			}
		
		}
	method descansar(){
		if (energia <2){
			ubicacion = "plaza"
			energia = energia + 5
			return "Ya termine de descanzar, puedo seguir"
		}
	 	else{
	 		return "Aun tengo energia de sobra"
	 	}
	}	
	method verubic(){
		return ubicacion
	}
	method retirar_paquete(paquete){
		 if (ubicacion == deposito){
			orden_de_entrega.add(paquete)
			
			}
			else{
				"no estas en el deposito"
			}
		}
	}
	

class Destinos{
	var codigo
	
	method codigo(){ 
        return codigo 
        }	
}

class Paquete{
	var codigo
	var ubicacion
	var destino
	
	method codigo(){
		return codigo
	}
}
const agente1 = new Agente(codigo = "a1", energia = 4, ubicacion = plaza)
const agente2 = new Agente(codigo = "a2", energia = 4, ubicacion = plaza)
const agente3 = new Agente(codigo = "a3", energia = 4, ubicacion = plaza)
const plaza = new Destinos(codigo = "p" )
const deposito = new Destinos(codigo = "b")
const casa1 = new Destinos(codigo = "c1" )
const casa2 = new Destinos(codigo = "c2" )
const casa3 = new Destinos(codigo = "c3" )
const paquete1 = new Paquete (codigo = "1", ubicacion = deposito, destino = casa2)

