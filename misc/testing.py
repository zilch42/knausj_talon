
import os

cwd = os.path.dirname(os.path.realpath(__file__))
macro_file = os.path.join(cwd, "../misc/macros.txt")

macro = ['id', 'name', 'email', 'age', 6, 'designation']

converted_macro = [str(element) for element in macro[:-1]]

# print macro words to file
f = open(macro_file, "a")
f.write("[")

for m in converted_macro:
    f.write("'" + m + "',")

f.write("]")
f.write("\n")
f.close()



