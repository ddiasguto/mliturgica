import os

def appendToFile(out,fileIn):
    lines = fileIn.readlines()
    for line in lines:
        s = "const Music(cipher: \'" + line + "\'),"
        out.write(s)
        out.write('\n')

def writeHeader(out,className, category):
    titulo = input(print('Titulo da Música:'))
    s = 'Chant ' + className + ' = Chant(title: \'' +  titulo + '\',\ncategory: \'' + category + '\',\nlyrics: [\n'
    out.write('\n\n')
    out.write(s)

def writeFooter(out):
      out.write('],')
      out.write('hasCypher: false,')
      out.write('ciphers: []);')
