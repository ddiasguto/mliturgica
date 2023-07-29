import os

def writeFooter(out):
      out.write('],')

def writeHeader(out, cipher):
    s = cipher + ': [\n'
    out.write('\n')
    out.write(s)

    
def setWhichCipher(c):
    str = 'cipher'
    return str+c
        
def appendToFile(out,fileIn):
    for line in fileIn.readlines():
        print(line)
        select=input('Cifra ou letra?\nC-cifra\nL-letra')
        while select.lower() != 'c' and select.lower() != 'l':
            select=input('c ou l por favor.')
        if select=='c':
            s = "const Cifra(cipher: \'" + line + "\'),"
        else:
            s= "const Music(cipher: \'" + line + "\'),"
        out.write(s)
        out.write('\n')
        os.system('clear')