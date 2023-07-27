#!/bin/python3
import lyrics_functions
import general_functions
import os
import os.path
    

general_functions.check()

file1 = open('aux.txt','r')

titulo = input('Titulo da Classe:')

category = int(input(print('Categorias:\n\t1-Entrada;\n\t2-Ato Penitencial;\n\t3-aclamacao\n\t4-Ofertório\n\t5-Santo\n\t6-Comunhão;\n\t7-Pós Comunhão\n\t8-Encerramento\nDigite a categoria:')))

categoryName = general_functions.setCategory(category)

outPath = open(general_functions.setingFileOut(category),'a')

lyrics_functions.writeHeader(outPath, titulo, categoryName)

lyrics_functions.appendToFile(outPath, file1)

lyrics_functions.writeFooter(outPath)

outPath.close()

file1.close()

general_functions.deleteAux()
