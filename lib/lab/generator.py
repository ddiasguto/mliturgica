#!/bin/python3
import functions
import os
import os.path
    

functions.check()

file1 = open('aux.txt','r')

titulo = input('Titulo da Classe:')

category = int(input(print('Categorias:\n\t1-Entrada;\n\t2-Ofertorio;\n\t3-aclamacao\n\t4-Comunhão;\n\t5-Final\nDigite a categoria:')))

categoryName = functions.setCategory(category)

outPath = open(functions.setingFileOut(category),'a')

functions.writeHeader(outPath, titulo, categoryName)

functions.appendToFile(outPath, file1)

functions.writeFooter(outPath)

outPath.close()

file1.close()

functions.deleteAux()



#absolute path: /home/danniel/repositorios/diasguto/lib/db/