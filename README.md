# Replica-Twitter

Una API de Rails que permite crear Usuarios, Posteos, Comentarios a los posteos y, a estos últimos, likes.

## Rails version

7.0.3

## Seteo del test

1) Clonar el repositorio: `git clone https://github.com/srizzuto/replica-twitter.git`

2) Iniciar el servidor via `rails s`, debe estar haciendo un listening al http://127.0.0.1:3000 para posterior uso del Postman

3) Abrir Postman https://web.postman.co/workspace/

4) Import `replica-twitter.postman_collection.json` del repositorio clonado al Postman

## Postman

Una vez que se accede a la colección y se despliega, se observaran distintos testeos realizados a las rutas creadas con sus respectivos JSONs. Se cubren testeos de `GET`, `POST` y `PUT` en este caso. Simplemente utilizando el boton `SEND` se observara el comportamiento de la API.
