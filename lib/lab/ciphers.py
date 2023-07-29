#!/bin/python3

import os
import ciphers_functions
import general_functions


aux = ['C','D','E','F','G','A','B']
file1 = open('aux.txt','r')

general_functions.check()

category = int(input(print('Categorias:\n\t1-Entrada;\n\t2-Ato Penitencial;\n\t3-aclamacao\n\t4-Ofertório\n\t5-Santo\n\t6-Comunhão;\n\t7-Pós Comunhão\n\t8-Encerramento\nDigite a categoria:')))

categoryName = general_functions.setCategory(category)

c = int(input(print('Selecione o tom:\n\t1-C/Dó\n\t2-D/Ré\n\t3-E/Mi\n\t4-F/Fa\n\t5-G/Sol\n\t6-A/La\n\t7-B/Si')))

cipherName=ciphers_functions.setWhichCipher(aux[c-1])

out = open(general_functions.setingFileOut(category),'a')

ciphers_functions.writeHeader(out, cipherName)

ciphers_functions.appendToFile(out, file1)

ciphers_functions.writeFooter(out)

out.close()

file1.close()

general_functions.deleteAux()