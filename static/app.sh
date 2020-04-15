# creación de carpetas en función de un listado dado en un archivo plano
# .txt

for NAME in *.*; do
  file_name="${NAME//[" ", "(", ")"]/"_"}" # limpia caracteres como +,:,- por _
  echo "$file_name" # presenta nombre
  # mkdir $file_name # crea una carpeta con el nombre de file_name
  mv "$NAME" "$file_name"
done 

# """
# tipo='xls'
# for filename in *.$tipo; do
#     echo $filename
#     tar -czvf $filename.tar.gz $filename 
# done
# 
# """
