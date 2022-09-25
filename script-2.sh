#!/bin/bash

var="8dm7KsjU28B7v621Jls"
value="ERmFRMVZ0U2paTlJYTkxDZz09Cg"

for i in {1..40}
do
        var=$(echo $var | base64)

        # Se hacen dos comparaciones: 
        # 1. Si el contenido de value esta dentro de var
        # 2. Si el numero de caracteres es superior a 113450
        #        
		# if [[ `echo $var | grep $value` && $(echo $var | wc -c) > 113450 ]]
        if [[ `echo $var | grep $value` && ${#var} > 113450 ]]
        then
            echo $var | tail -c 20
        fi
done
