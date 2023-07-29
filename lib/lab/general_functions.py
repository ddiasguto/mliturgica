import os

def check():
    if not os.path.isfile('aux.txt'):
        print('Arquivo de entrada não encontrado.\nSaindo...')
        exit()

def setCategory(index):
    aux = ['Entrada','Ato Penitencial','Aclamação','Ofertório', 'Santo','Comunhão','Pós Comunhão','Encerramento']
    out = aux[index-1]
    return out


def deleteAux():
    if os.path.isfile('aux.txt'):
        os.remove('aux.txt')
        print("Arquivo aux.txt deletado.")
        
def setingFileOut(index):
    out = '../db/categorized/'
    aux = ['entrada','penitencial','aclamacao','ofertorio','saint','comunhao','pos_comunion','final']
    return out+aux[index-1]+'.dart'
