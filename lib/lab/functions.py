import os

def appendToFile(out,fileIn):
    lines = fileIn.readlines()
    for line in lines:
        s = "const Music(cipher: \'" + line + "\'),"
        out.write(s)
        out.write('\n')

def setingFileOut(index):
    if index == 1:
        out='../db/entrada.dart'
    elif index == 2:
        out='../db/ofertorio.dart'
    elif index ==3:
        out='../db/aclamacao.dart'
    elif index ==4:
        out='../db/comunhao.dart'
    elif index==5:
        out='../db/final.dart'
    return out



def setCategory(index):
    if index == 1:
        out='Entrada'
    elif index == 2:
        out='Ofertório'
    elif index ==3:
        out='Aclamação'
    elif index ==4:
        out='Comunhão'
    elif index==5:
        out='Encerramento'
    return out

def writeHeader(out,className, category):
    titulo = input(print('Titulo da Música:'))
    s = 'Chant ' + className + ' = Chant(title: \'' +  titulo + '\',\ncategory: \'' + category + '\',\nciphers: [\n'
    out.write('\n\n')
    out.write(s)
  

def check():
    if not os.path.isfile('aux.txt'):
        print('Arquivo de entrada não encontrado.\nSaindo...')
        exit()


def deleteAux():
    if os.path.isfile('aux.txt'):
        os.remove('aux.txt')
        print("Arquivo aux.txt deletado.")

def writeFooter(out):
      out.write(']);')