from classParticula import Particula
from classCapturador import Capturador
from Queue import PriorityQueue

import math

grafoG = dict()
capturador = Capturador()
visitados = []
grafoN = dict()

def llenarGrafo():
        grafoG=dict()
        for particula in capturador.lista:
            origen = (particula.origenX, particula.origenY)
            destino = (particula.destinoX, particula.destinoY)
            if origen in grafoG:
                grafoG[origen].append((destino, particula.distancia))
            else:
                grafoG[origen] = [(destino, particula.distancia)]
            if destino in grafoG:
                grafoG[destino].append((origen, particula.distancia))
            else:
                grafoG[destino] = [(origen, particula.distancia)]
                
def algoritmoPrim():
        visitados=[]
        grafoN=dict()
        llenarGrafo()
        pq=PriorityQueue()
        origenX = int(55)
        origenY = int(77)

        origen=(origenX,origenY)

        visitados.append(origen)
        
        print(grafoG[origen])
        for actual in grafoG[origen]:
            pq.put([actual[1],(origen,actual[0])])
        #distancia, origen. Destino

        while not pq.empty():
            actual=pq.get()
            print("Actual")
            print(actual[1][1])

            if buscarPila(actual[1][1])==False:
                visitados.append(actual[1][1])

                print("Adyacentes")
                for adyacentes in grafoG[actual[1][1]]:
                    print(adyacentes[1],actual[1][1],adyacentes[0])
                    pq.put([adyacentes[1],(actual[1][1],adyacentes[0])])
                #NodoOrigen, NodoOrigen, Peso
                llenarGrafoPrim(actual[1][0],actual[1][1],actual[0])
                
def llenarGrafoPrim(origen,destino,distancia):
        if origen in grafoN:
            grafoN[origen].append((destino, distancia))
        else:
            grafoN[origen] = [(destino, distancia)]
        if destino in grafoN:
            grafoN[destino].append((origen, distancia))
        else:
            grafoN[destino] = [(origen, distancia)]

def buscarPila(busqueda):
        for actual in visitados:
            if actual==busqueda:
                return True;
        return False;

def setup():
  
  particula=Particula()
  particula.id = int(0) 
  particula.origenX=int(55)
  particula.origenY=int(77)
  particula.destinoX=int(150)
  particula.destinoY=int(300)
  particula.distancia=math.sqrt(pow((int(particula.destinoX)-int(particula.origenX)),2)+pow((int(particula.destinoY)-int(particula.origenY)),2))
  particula.red=int(43)
  particula.green=int(23)
  particula.blue=int(12)
  particula.velocidad=int(50)
  
  capturador.agregar(particula)
  
  llenarGrafo()
  capturador.mostrar()
  algoritmoPrim()  

def draw():
    lista=[]
