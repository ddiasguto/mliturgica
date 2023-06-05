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

def writeHeader(out,titulo):
    s = 'class ' + titulo + ' extends StatelessWidget {'
    out.write(s)
    out.write('\n\t')
    s='const ' + titulo + '({super.key});'
    out.write(s)
    out.write('\n\t@override')
    out.write('\tWidget build(BuildContext context) {\n')
    out.write('\t\treturn Column(children: [\n')

def check():
    if not os.path.isfile('aux.txt'):
        print('Arquivo de entrada não encontrado.\nSaindo...')
        exit()


def deleteAux():
    if os.path.isfile('aux.txt'):
        os.remove('aux.txt')
        print("Arquivo aux.txt deletado.")

def writeFooter(out):
      out.write(']);\n}\n}')