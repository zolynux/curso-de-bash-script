# ✨ Curso de Bash Script para Principiantes 🚀

---

¡El mundo sería un lugar mejor si todos pudieran hacer #!/bin/bash sin miedo! 💻✨ #CodeLife #BashScript #GeekMode

![alt text](image.png)

---

## Introducción a Bash Script.

Bash (Bourne Again Shell) es un intérprete de comandos y lenguaje de scripting ampliamente utilizado en sistemas Unix y Linux.

Aquí tienes una introducción básica:

1. Creación de un script:

   - Crea un archivo con extensión .sh (por ejemplo, `miscript.sh`)
   - La primera línea debe ser el "shebang": `#!/bin/bash`

2. Estructura básica:

```bash
#!/bin/bash

# Esto es un comentario
echo "Hola, mundo!"
```

3. Variables:

```bash
nombre="Juan"
echo "Hola, $nombre"
```

4. Input del usuario:

```bash
echo "¿Cómo te llamas?"
read nombre
echo "Hola, $nombre"
```

5. Condicionales:

```bash
if [ "$nombre" = "Juan" ]; then
    echo "Hola, Juan!"
else
    echo "Hola, extraño"
fi
```

6. Bucles:

```bash
for i in {1..5}
do
   echo "Número $i"
done
```

7. Funciones:

```bash
saludar() {
    echo "Hola, $1!"
}

saludar "María"
```

8. Ejecución de comandos:

```bash
fecha=$(date)
echo "La fecha actual es: $fecha"
```

Para ejecutar tu script:

1. Dale permisos de ejecución: `chmod +x miscript.sh`
2. Ejecútalo: `./miscript.sh`

Estos son conceptos básicos para empezar. Bash es muy potente y tiene muchas más características y funcionalidades.

---

## Qué es un Bash Script

Un bash script es un archivo de texto que contiene una serie de comandos que se ejecutan en el intérprete de comandos Bash (Bourne Again SHell) en sistemas Unix y Linux. Estos scripts permiten automatizar tareas, realizar operaciones complejas y ejecutar múltiples comandos en secuencia.

Características principales de los bash scripts:

1. **Extensión de archivo**: Suelen tener la extensión ".sh", aunque no es obligatorio.

2. **Shebang**: Comienzan con una línea que indica el intérprete a usar, típicamente "#!/bin/bash".

3. **Ejecución de comandos**: Pueden ejecutar cualquier comando disponible en el sistema.

4. **Variables**: Permiten definir y usar variables para almacenar datos.

5. **Estructuras de control**: Incluyen condicionales (if-else), bucles (for, while) y funciones.

6. **Argumentos**: Pueden recibir y procesar argumentos de línea de comandos.

7. **Redireccionamiento**: Permiten manipular la entrada y salida estándar.

Los bash scripts son muy útiles para administradores de sistemas, desarrolladores y usuarios avanzados que necesitan automatizar tareas repetitivas o crear flujos de trabajo personalizados en entornos Unix/Linux.

---

## Para qué sirve

Los bash scripts sirven para múltiples propósitos, principalmente para automatizar tareas y simplificar procesos en sistemas Unix y Linux. Aquí hay algunos usos comunes:

1. **Automatización de tareas repetitivas**: Por ejemplo, realizar copias de seguridad diarias o limpiar archivos temporales periódicamente.

2. **Instalación y configuración de software**: Facilitar la instalación de programas y sus dependencias, así como configurar el entorno del sistema.

3. **Administración del sistema**: Monitorear recursos, gestionar usuarios, actualizar el sistema operativo, etc.

4. **Procesamiento de datos**: Manipular archivos de texto, realizar conversiones de formato, o procesar grandes cantidades de datos.

5. **Tareas de red**: Automatizar pruebas de conectividad, configurar firewalls, o gestionar servicios de red.

6. **Desarrollo de software**: Compilar código, ejecutar pruebas automáticas, o gestionar el despliegue de aplicaciones.

7. **Personalización del entorno**: Crear alias de comandos, configurar el entorno de trabajo, o inicializar aplicaciones al inicio del sistema.

8. **Análisis de logs**: Extraer información relevante de archivos de registro del sistema o aplicaciones.

9. **Integración de herramientas**: Combinar funcionalidades de diferentes programas para crear flujos de trabajo más complejos.

10. **Automatización de informes**: Generar informes periódicos sobre el estado del sistema, uso de recursos, o actividad de usuarios.

En resumen, los bash scripts son una herramienta versátil que permite a los usuarios ahorrar tiempo, reducir errores y realizar tareas complejas de manera eficiente en sistemas Unix y Linux.

---

## Hola Mundo

Cómo crear un script "Hola Mundo" en Bash y cómo funciona.

Primero, aquí está el código para un script "Hola Mundo" en Bash:

```bash
#!/bin/bash
echo "Hola Mundo"
```

Ahora, vamos a desglosar este script:

1. La primera línea `#!/bin/bash` es lo que se llama "shebang". Le dice al sistema que este script debe ser ejecutado por el intérprete Bash. El `#!` es lo que identifica esta línea como shebang, y `/bin/bash` es la ruta al intérprete de Bash.

2. La segunda línea `echo "Hola Mundo"` es el comando que realmente imprime el texto en la pantalla. `echo` es un comando en Bash que se utiliza para mostrar texto en la salida estándar (normalmente, la terminal).

Para usar este script:

1. Cree un nuevo archivo con un editor de texto, por ejemplo `hola_mundo.sh`.

2. Copie el código anterior en este archivo y guárdelo.

3. Haga el archivo ejecutable con el comando: `chmod +x hola_mundo.sh`

4. Ejecute el script con: `./hola_mundo.sh`

Cuando lo ejecute, verá "Hola Mundo" impreso en su terminal.

Este es un ejemplo muy simple, pero ilustra la estructura básica de un script de Bash. A partir de aquí, puede agregar más comandos, usar variables, estructuras de control como bucles y condicionales, y mucho más para crear scripts más complejos y útiles.

---

## Guardar Salida

Guardar la salida en un bash script es una técnica útil para capturar el resultado de comandos o procesos para su posterior uso o análisis. Hay varias formas de hacerlo:

1. Redirección a un archivo:
   La forma más básica es usar el operador de redirección `>` o `>>`.

   ```bash
   #!/bin/bash
   echo "Hola Mundo" > salida.txt
   ```

   Esto guarda "Hola Mundo" en el archivo salida.txt. El `>` sobrescribe el archivo si existe, mientras que `>>` añade al final del archivo.

2. Capturar en una variable:
   Puede guardar la salida de un comando en una variable usando la sintaxis de sustitución de comandos.

   ```bash
   #!/bin/bash
   resultado=$(echo "Hola Mundo")
   echo $resultado
   ```

3. Tee:
   El comando `tee` permite mostrar la salida en pantalla y guardarla en un archivo simultáneamente.

   ```bash
   #!/bin/bash
   echo "Hola Mundo" | tee salida.txt
   ```

4. Redirección de error estándar:
   Para guardar los errores, use `2>` para redirigir solo errores, o `&>` para redirigir tanto la salida estándar como los errores.

   ```bash
   #!/bin/bash
   comando_que_puede_fallar 2> errores.log
   ```

5. Here documents:
   Útiles para crear archivos con múltiples líneas de contenido.

   ```bash
   #!/bin/bash
   cat << EOF > archivo.txt
   Línea 1
   Línea 2
   Línea 3
   EOF
   ```

Cada método tiene sus usos específicos dependiendo de lo que necesite hacer con la salida. La redirección simple es útil para logs, la captura en variables es buena para procesamiento posterior en el script, y tee es excelente cuando necesita ver la salida y guardarla al mismo tiempo.

---

## Comentarios

Los comentarios en bash scripts son texto que se incluye en el código pero que no se ejecuta. Son útiles para explicar el propósito del código, dejar notas para otros programadores (o para uno mismo en el futuro), o para deshabilitar temporalmente partes del script. Hay dos tipos principales de comentarios en bash:

1. Comentarios de una línea:
   Se crean usando el símbolo `#`. Todo lo que sigue a este símbolo en la misma línea se considera un comentario.

   ```bash
   #!/bin/bash

   # Esto es un comentario de una línea
   echo "Hola Mundo"  # Este es un comentario al final de una línea de código
   ```

2. Comentarios multilínea:
   Aunque bash no tiene un formato oficial para comentarios multilínea, hay algunas técnicas comunes:

   a) Usar `#` en múltiples líneas:

   ```bash
   # Este es un comentario
   # que abarca
   # varias líneas
   ```

   b) Usar HERE document con un comando nulo (:):

   ```bash
   : <<'END_COMMENT'
   Este es un comentario
   de varias líneas
   que no se ejecutará
   END_COMMENT
   ```

Usos comunes de los comentarios:

1. Documentar el script:

   ```bash
   #!/bin/bash

   # Nombre: mi_script.sh
   # Autor: Juan Pérez
   # Fecha: 2024-07-26
   # Descripción: Este script realiza una tarea específica...
   ```

2. Explicar secciones complejas:

   ```bash
   # La siguiente función calcula el factorial de un número
   factorial() {
       # Código de la función...
   }
   ```

3. Deshabilitar temporalmente código:

   ```bash
   # echo "Esta línea no se ejecutará"
   echo "Esta línea sí se ejecutará"
   ```

4. Dejar notas o TODOs:
   ```bash
   # TODO: Optimizar esta función para mejor rendimiento
   ```

Los comentarios son una parte crucial de la escritura de buenos scripts, ya que mejoran la legibilidad y el mantenimiento del código. Es una buena práctica comentar el código, especialmente en secciones complejas o no obvias.

---

## Delimitador Cat

El delimitador Cat en Bash script se refiere al uso del comando `cat` junto con un "here document" (también conocido como "heredoc"). Esta técnica permite crear bloques de texto multilínea dentro de un script. El término "delimitador" se refiere a la palabra que se usa para marcar el inicio y el final de este bloque de texto.

Aquí está cómo funciona:

1. Sintaxis básica:

   ```bash
   cat << DELIMITADOR
   Texto
   multilínea
   aquí
   DELIMITADOR
   ```

   Donde `DELIMITADOR` puede ser cualquier palabra que elijas (comúnmente se usa EOF, que significa "End Of File").

2. Ejemplo práctico:

   ```bash
   #!/bin/bash

   cat << EOF > archivo.txt
   Esta es la primera línea.
   Esta es la segunda línea.
   Y esta es la tercera línea.
   EOF
   ```

   Este script creará un archivo llamado `archivo.txt` con el contenido especificado.

3. Usos comunes:

   - Crear archivos de configuración
   - Generar scripts o código dentro de un script
   - Mostrar mensajes largos o instrucciones

4. Variaciones:

   - `<<-` permite usar tabulaciones para indentar el heredoc, que luego se eliminan
   - `<<'DELIMITADOR'` (con comillas) evita la expansión de variables dentro del heredoc

5. Ejemplo con variables:
   ```bash
   #!/bin/bash
   nombre="Juan"
   cat << EOF
   Hola, $nombre!
   Bienvenido a este script.
   EOF
   ```
   Esto mostrará el texto con la variable $nombre expandida.

Esta técnica es muy útil cuando necesitas incluir grandes bloques de texto en tu script, especialmente si ese texto contiene caracteres especiales o múltiples líneas que serían difíciles de manejar con simples comandos `echo`.

---

## Read

El comando `read` en Bash script se utiliza para capturar la entrada del usuario o leer líneas de un archivo. Es una herramienta muy útil para hacer scripts interactivos o procesar datos línea por línea. Aquí te explico sus principales usos y características:

1. Sintaxis básica:

   ```bash
   read variable
   ```

   Esto lee una línea de entrada y la almacena en la variable especificada.

2. Leer múltiples variables:

   ```bash
   read var1 var2 var3
   ```

   Esto lee una línea y divide la entrada en palabras, asignando cada palabra a una variable.

3. Usar un prompt:

   ```bash
   read -p "Ingrese su nombre: " nombre
   ```

   El flag `-p` permite mostrar un prompt antes de esperar la entrada.

4. Leer con tiempo límite:

   ```bash
   read -t 5 respuesta
   ```

   El flag `-t` establece un tiempo límite (en segundos) para la entrada.

5. Leer sin mostrar la entrada (útil para contraseñas):

   ```bash
   read -s password
   ```

   El flag `-s` oculta la entrada del usuario.

6. Leer un número específico de caracteres:

   ```bash
   read -n 1 respuesta
   ```

   El flag `-n` limita la entrada a un número específico de caracteres.

7. Leer desde un archivo:

   ```bash
   while read linea; do
       echo "$linea"
   done < archivo.txt
   ```

   Esto lee el archivo línea por línea.

8. Usar un delimitador personalizado:
   ```bash
   IFS=':' read -r usuario pass uid gid info home shell <<< "$linea"
   ```
   Esto divide la entrada usando ':' como delimitador.

Ejemplos prácticos:

1. Script interactivo simple:

   ```bash
   #!/bin/bash
   read -p "¿Cuál es tu nombre? " nombre
   echo "Hola, $nombre!"
   ```

2. Leer una contraseña:

   ```bash
   #!/bin/bash
   read -sp "Ingresa tu contraseña: " pass
   echo -e "\nLa contraseña ingresada es: $pass"
   ```

3. Leer y procesar un archivo CSV:
   ```bash
   #!/bin/bash
   while IFS=',' read -r nombre edad ciudad; do
       echo "Nombre: $nombre, Edad: $edad, Ciudad: $ciudad"
   done < datos.csv
   ```

El comando `read` es muy versátil y es una herramienta fundamental para crear scripts interactivos y procesar datos en Bash.

---

## Condicionales

Los condicionales en Bash script permiten ejecutar diferentes bloques de código basados en condiciones específicas. Los principales tipos de estructuras condicionales en Bash son:

1. if-else:
   La forma más básica de condicional.

   ```bash
   if [ condición ]; then
       # código si la condición es verdadera
   else
       # código si la condición es falsa
   fi
   ```

   Ejemplo:

   ```bash
   if [ "$edad" -ge 18 ]; then
       echo "Eres mayor de edad"
   else
       echo "Eres menor de edad"
   fi
   ```

2. if-elif-else:
   Para múltiples condiciones.

   ```bash
   if [ condición1 ]; then
       # código si condición1 es verdadera
   elif [ condición2 ]; then
       # código si condición2 es verdadera
   else
       # código si ninguna condición es verdadera
   fi
   ```

3. case:
   Útil para comparar una variable contra múltiples valores.

   ```bash
   case $variable in
       patrón1)
           # código para patrón1
           ;;
       patrón2)
           # código para patrón2
           ;;
       *)
           # código por defecto
           ;;
   esac
   ```

4. Operadores de comparación:

   - Para números: -eq (igual), -ne (no igual), -lt (menor que), -le (menor o igual), -gt (mayor que), -ge (mayor o igual)
   - Para cadenas: = (igual), != (no igual), -z (cadena vacía), -n (cadena no vacía)
   - Para archivos: -e (existe), -f (archivo regular), -d (directorio), -r (legible), -w (escribible), -x (ejecutable)

5. Operadores lógicos:
   - && (AND lógico)
   - || (OR lógico)
   - ! (NOT lógico)

Ejemplos prácticos:

1. Verificar si un archivo existe:

   ```bash
   if [ -f "archivo.txt" ]; then
       echo "El archivo existe"
   else
       echo "El archivo no existe"
   fi
   ```

2. Comparar números:

   ```bash
   read -p "Ingresa un número: " num
   if [ "$num" -gt 0 ]; then
       echo "Número positivo"
   elif [ "$num" -lt 0 ]; then
       echo "Número negativo"
   else
       echo "Cero"
   fi
   ```

3. Usar case para un menú:
   ```bash
   echo "Selecciona una opción:"
   echo "1) Opción 1"
   echo "2) Opción 2"
   echo "3) Salir"
   read opcion
   case $opcion in
       1) echo "Seleccionaste la Opción 1" ;;
       2) echo "Seleccionaste la Opción 2" ;;
       3) echo "Saliendo..." ; exit ;;
       *) echo "Opción inválida" ;;
   esac
   ```

Los condicionales son fundamentales en la programación de scripts Bash, permitiendo crear lógica de decisión y flujos de control complejos.

---

## Case

En Bash scripting, el comando `case` se utiliza para realizar una comparación de una variable o una expresión con múltiples patrones y ejecutar comandos diferentes según el patrón que coincida. Es una estructura condicional similar a `if`, pero es más adecuada cuando hay múltiples condiciones posibles. La sintaxis básica de `case` es la siguiente:

```bash
case expresión in
  patrón1)
    # comandos
    ;;
  patrón2)
    # comandos
    ;;
  ...
  patrónN)
    # comandos
    ;;
  *)
    # comandos para cualquier otro caso
    ;;
esac
```

A continuación, te explico cada parte de esta estructura:

1. **expresión**: Es el valor que se va a comparar contra los diferentes patrones. Puede ser una variable o cualquier expresión válida en Bash.
2. **patrón1, patrón2, ..., patrónN**: Son los diferentes patrones que se van a comparar con la expresión. Si la expresión coincide con un patrón, se ejecutan los comandos asociados a ese patrón.
3. **comandos**: Son los comandos que se ejecutan si la expresión coincide con el patrón correspondiente.
4. **;;**: Indica el final de los comandos para ese patrón.
5. **\*)**: Este es el caso por defecto que se ejecuta si la expresión no coincide con ninguno de los patrones especificados. Es opcional.

Aquí tienes un ejemplo práctico:

```bash
#!/bin/bash

echo "Ingrese una opción (1-3):"
read opcion

case $opcion in
  1)
    echo "Ha seleccionado la opción 1."
    ;;
  2)
    echo "Ha seleccionado la opción 2."
    ;;
  3)
    echo "Ha seleccionado la opción 3."
    ;;
  *)
    echo "Opción no válida. Por favor, seleccione una opción entre 1 y 3."
    ;;
esac
```

En este script:

- Se pide al usuario que ingrese una opción.
- La opción ingresada se almacena en la variable `opcion`.
- El comando `case` compara el valor de `opcion` con los patrones `1`, `2`, `3` y ejecuta los comandos correspondientes.
- Si la opción no es válida (no es `1`, `2` o `3`), se ejecutan los comandos dentro del caso `*`, que es el caso por defecto.

El uso de `case` puede simplificar la lógica del script cuando se necesita manejar múltiples condiciones de manera clara y estructurada.

---

## Loops

En Bash scripting, los bucles (loops) son estructuras de control que permiten ejecutar repetidamente un conjunto de comandos hasta que se cumpla una condición específica. Bash admite varios tipos de bucles: `for`, `while`, y `until`. Aquí te explico cada uno con ejemplos:

### 1. Bucle `for`

El bucle `for` se usa para iterar sobre una lista de elementos, como un rango de números, una lista de palabras, o el contenido de un directorio.

#### Sintaxis:

```bash
for variable in lista
do
  comandos
done
```

#### Ejemplo:

```bash
#!/bin/bash

# Iterar sobre una lista de palabras
for color in rojo verde azul
do
  echo "Color: $color"
done

# Iterar sobre un rango de números
for i in {1..5}
do
  echo "Número: $i"
done
```

### 2. Bucle `while`

El bucle `while` ejecuta los comandos mientras la condición especificada sea verdadera.

#### Sintaxis:

```bash
while condición
do
  comandos
done
```

#### Ejemplo:

```bash
#!/bin/bash

# Inicializar una variable
contador=1

# Mientras el contador sea menor o igual a 5
while [ $contador -le 5 ]
do
  echo "Contador: $contador"
  contador=$((contador + 1))
done
```

### 3. Bucle `until`

El bucle `until` es similar al `while`, pero ejecuta los comandos mientras la condición sea falsa.

#### Sintaxis:

```bash
until condición
do
  comandos
done
```

#### Ejemplo:

```bash
#!/bin/bash

# Inicializar una variable
contador=1

# Hasta que el contador sea mayor que 5
until [ $contador -gt 5 ]
do
  echo "Contador: $contador"
  contador=$((contador + 1))
done
```

### 4. Bucle `for` con `C`-like syntax

También se puede utilizar una sintaxis similar a los bucles `for` en C, donde se inicializa una variable, se especifica una condición, y se define un incremento.

#### Sintaxis:

```bash
for (( inicialización; condición; incremento ))
do
  comandos
done
```

#### Ejemplo:

```bash
#!/bin/bash

# Iterar de 1 a 5 usando la sintaxis de C
for (( i=1; i<=5; i++ ))
do
  echo "Número: $i"
done
```

### 5. Bucle `for` para iterar sobre archivos

El bucle `for` también puede utilizarse para iterar sobre archivos en un directorio.

#### Ejemplo:

```bash
#!/bin/bash

# Iterar sobre todos los archivos .txt en el directorio actual
for archivo in *.txt
do
  echo "Archivo encontrado: $archivo"
done
```

### Uso de `break` y `continue`

- `break`: Sale del bucle inmediatamente.
- `continue`: Salta el resto del cuerpo del bucle y continúa con la siguiente iteración.

#### Ejemplo con `break` y `continue`:

```bash
#!/bin/bash

for i in {1..10}
do
  if [ $i -eq 3 ]; then
    continue  # Saltar la iteración cuando i es 3
  fi
  if [ $i -eq 8 ]; then
    break  # Salir del bucle cuando i es 8
  fi
  echo "Número: $i"
done
```

Estos son los conceptos básicos de los bucles en Bash scripting, que te permiten realizar operaciones repetitivas de manera eficiente y controlada.

---

## Break y Continue

En Bash scripting, `break` y `continue` son comandos utilizados para controlar el flujo de ejecución de los bucles (`for`, `while`, `until`). Estos comandos permiten modificar el comportamiento de los bucles basados en condiciones específicas.

### 1. `break`

El comando `break` se utiliza para salir de un bucle inmediatamente, independientemente de la condición del bucle. Es útil cuando deseas terminar el bucle en respuesta a una condición particular.

#### Ejemplo con `break`:

```bash
#!/bin/bash

for i in {1..10}
do
  if [ $i -eq 5 ]; then
    break  # Sale del bucle cuando i es igual a 5
  fi
  echo "Número: $i"
done

echo "Bucle terminado debido a 'break'."
```

En este ejemplo, el bucle se interrumpirá cuando `i` sea igual a 5, y no se ejecutarán más iteraciones.

### 2. `continue`

El comando `continue` se utiliza para saltar la iteración actual de un bucle y pasar a la siguiente iteración. Es útil cuando deseas omitir ciertas iteraciones basadas en una condición.

#### Ejemplo con `continue`:

```bash
#!/bin/bash

for i in {1..10}
do
  if [ $i -eq 5 ]; then
    continue  # Omite la iteración cuando i es igual a 5
  fi
  echo "Número: $i"
done

echo "Bucle completado con 'continue'."
```

En este ejemplo, cuando `i` es igual a 5, el comando `continue` hace que se omita el resto de los comandos en esa iteración y se pase a la siguiente iteración del bucle.

### Uso de `break` y `continue` en bucles anidados

Ambos comandos también se pueden utilizar en bucles anidados. Es posible especificar cuántos niveles de bucles deseas interrumpir o continuar utilizando un argumento numérico.

#### Ejemplo de `break` en bucles anidados:

```bash
#!/bin/bash

for i in {1..3}
do
  for j in {1..3}
  do
    if [ $j -eq 2 ]; then
      break  # Sale del bucle interno cuando j es igual a 2
    fi
    echo "i=$i, j=$j"
  done
done

echo "Bucles anidados terminados debido a 'break'."
```

#### Ejemplo de `continue` en bucles anidados:

```bash
#!/bin/bash

for i in {1..3}
do
  for j in {1..3}
  do
    if [ $j -eq 2 ]; then
      continue  # Omite la iteración actual del bucle interno cuando j es igual a 2
    fi
    echo "i=$i, j=$j"
  done
done

echo "Bucles anidados completados con 'continue'."
```

Estos ejemplos muestran cómo `break` y `continue` pueden influir en el flujo de ejecución de bucles, proporcionando una manera flexible de controlar cuándo salir o omitir iteraciones específicas basadas en condiciones dinámicas.

---

## Argumentos en Bash Script

En Bash scripting, los argumentos son valores que se pasan a un script cuando se ejecuta desde la línea de comandos. Los argumentos permiten que el script reciba y use datos proporcionados por el usuario u otro programa, haciéndolo más flexible y reutilizable. Aquí te explico cómo funcionan los argumentos en Bash scripts y cómo utilizarlos.

### 1. Acceso a los Argumentos

Los argumentos pasados a un script se pueden acceder usando variables especiales:

- `$0`: El nombre del script.
- `$1`, `$2`, `$3`, etc.: Los primeros, segundos, terceros, etc., argumentos.
- `$#`: El número de argumentos pasados al script.
- `$@`: Todos los argumentos pasados al script como una lista.
- `$*`: Todos los argumentos pasados al script como una sola cadena.
- `"$@"`: Todos los argumentos pasados al script como una lista, cada uno entre comillas.
- `"$*"`: Todos los argumentos pasados al script como una sola cadena entre comillas.

### 2. Ejemplo de Uso de Argumentos

Supongamos que tenemos un script llamado `mi_script.sh` y queremos pasarle dos argumentos.

#### Contenido de `mi_script.sh`:

```bash
#!/bin/bash

echo "Nombre del script: $0"
echo "Primer argumento: $1"
echo "Segundo argumento: $2"
echo "Número de argumentos: $#"

echo "Todos los argumentos (separados): $@"
echo "Todos los argumentos (cadena única): $*"
```

#### Ejecución del script:

```bash
$ ./mi_script.sh argumento1 argumento2
```

#### Salida del script:

```
Nombre del script: ./mi_script.sh
Primer argumento: argumento1
Segundo argumento: argumento2
Número de argumentos: 2
Todos los argumentos (separados): argumento1 argumento2
Todos los argumentos (cadena única): argumento1 argumento2
```

### 3. Procesamiento de Argumentos

A menudo, es útil procesar argumentos en un bucle para manejar un número variable de argumentos o realizar operaciones específicas basadas en los valores de los argumentos.

#### Ejemplo de procesamiento de argumentos:

```bash
#!/bin/bash

# Verificar si hay al menos un argumento
if [ $# -lt 1 ]; then
  echo "Uso: $0 arg1 [arg2 ... argN]"
  exit 1
fi

# Procesar cada argumento
for arg in "$@"
do
  echo "Argumento: $arg"
done
```

### 4. Uso de `shift`

El comando `shift` se utiliza para desplazar los argumentos hacia la izquierda. Esto es útil cuando deseas procesar un argumento a la vez y luego pasar al siguiente.

#### Ejemplo de uso de `shift`:

```bash
#!/bin/bash

# Verificar si hay al menos un argumento
if [ $# -lt 1 ]; then
  echo "Uso: $0 arg1 [arg2 ... argN]"
  exit 1
fi

# Procesar cada argumento usando shift
while [ $# -gt 0 ]
do
  echo "Argumento: $1"
  shift
done
```

### 5. Argumentos de Opción

Los scripts Bash a menudo utilizan argumentos de opción (como `-a` o `--long-option`). Estos se pueden manejar de manera eficiente con el comando `getopts`.

#### Ejemplo de uso de `getopts`:

```bash
#!/bin/bash

while getopts ":a:b:" opt; do
  case $opt in
    a)
      echo "Opción -a con valor: $OPTARG"
      ;;
    b)
      echo "Opción -b con valor: $OPTARG"
      ;;
    \?)
      echo "Opción inválida: -$OPTARG"
      ;;
    :)
      echo "La opción -$OPTARG requiere un argumento."
      ;;
  esac
done
```

#### Ejecución del script:

```bash
$ ./mi_script.sh -a valorA -b valorB
```

#### Salida del script:

```
Opción -a con valor: valorA
Opción -b con valor: valorB
```

Estos conceptos básicos sobre el manejo de argumentos en Bash scripts te permitirán crear scripts más flexibles y poderosos, que puedan recibir y procesar información desde la línea de comandos de manera efectiva.

---

## Stdin

STDIN (Standard Input) en Bash script se refiere a la entrada estándar, que es uno de los tres flujos de datos estándar en sistemas Unix/Linux. Es el canal por el cual los datos entran a un programa. Aquí te explico los aspectos clave:

1. Concepto básico:

   - STDIN es el flujo de entrada predeterminado.
   - Normalmente está conectado al teclado cuando se ejecuta un script interactivamente.
   - Tiene el descriptor de archivo 0.

2. Uso común:

   - Los programas leen datos de STDIN cuando no se especifica otra fuente de entrada.
   - Muchos comandos de Unix/Linux están diseñados para leer de STDIN si no se les proporciona un archivo de entrada.

3. Redirección de STDIN:
   Se puede redirigir STDIN para que lea de un archivo en lugar del teclado:

   ```bash
   comando < archivo.txt
   ```

4. Pipes (tuberías):
   STDIN puede recibir datos de otro comando a través de pipes:

   ```bash
   comando1 | comando2
   ```

   Aquí, la salida de `comando1` se convierte en la entrada (STDIN) de `comando2`.

5. Here documents:
   Otra forma de proporcionar entrada a un comando:

   ```bash
   cat << EOF
   línea1
   línea2
   EOF
   ```

6. Lectura de STDIN en scripts:

   - El comando `read` lee de STDIN por defecto:
     ```bash
     read variable
     ```
   - Puedes leer línea por línea de STDIN en un bucle:
     ```bash
     while read linea; do
         echo "Leído: $linea"
     done
     ```

7. Ejemplo práctico - procesamiento de texto:

   ```bash
   #!/bin/bash

   # Este script lee líneas de STDIN y las procesa
   while read linea; do
       echo "Línea procesada: ${linea^^}"  # Convierte a mayúsculas
   done
   ```

   Puedes usar este script así:

   ```
   echo "hola mundo" | ./script.sh
   ```

   O:

   ```
   ./script.sh < archivo.txt
   ```

8. Verificar si hay datos en STDIN:

   ```bash
   if [ -t 0 ]; then
       echo "No hay datos en STDIN"
   else
       echo "Hay datos disponibles en STDIN"
   fi
   ```

9. Uso con comandos que esperan STDIN:
   Muchos comandos como `grep`, `sort`, `awk` pueden leer de STDIN si no se les proporciona un archivo:
   ```bash
   echo "línea1\nlínea2\nlínea3" | sort
   ```

STDIN es una parte fundamental de la filosofía de Unix de crear programas que puedan trabajar juntos, permitiendo que la salida de un programa sea la entrada de otro. Esto facilita la creación de scripts potentes y flexibles en Bash.

---

## sterr y stdout

STDERR (Standard Error) y STDOUT (Standard Output) son dos de los tres flujos estándar en sistemas Unix/Linux, junto con STDIN. Estos son fundamentales en la programación de bash scripts para manejar la salida de los comandos y programas. Aquí te explico ambos:

STDOUT (Standard Output):

1. Concepto:

   - Es el flujo de salida principal para los procesos.
   - Tiene el descriptor de archivo 1.

2. Uso:

   - Por defecto, la salida normal de los comandos va a STDOUT.
   - Normalmente se muestra en la terminal.

3. Redirección:
   - Se puede redirigir usando `>` o `>>`:
     ```bash
     echo "Hola" > archivo.txt  # Sobrescribe
     echo "Mundo" >> archivo.txt  # Añade al final
     ```

STDERR (Standard Error):

1. Concepto:

   - Es el flujo para mensajes de error y diagnóstico.
   - Tiene el descriptor de archivo 2.

2. Uso:

   - Los mensajes de error se envían a STDERR.
   - Por defecto, también se muestra en la terminal.

3. Redirección:
   - Se redirige usando `2>` o `2>>`:
     ```bash
     comando_que_puede_fallar 2> errores.log
     ```

Diferencias y usos combinados:

1. Separación de salidas:

   - Permite distinguir entre salida normal y errores.
   - Útil para logging y depuración.

2. Redirección conjunta:

   - Redirigir ambos a un archivo:
     ```bash
     comando > salida_y_errores.log 2>&1
     ```
   - Redirigir a archivos separados:
     ```bash
     comando > salida.log 2> errores.log
     ```

3. Pipes y redirección:

   - Solo STDOUT pasa por defecto en un pipe:
     ```bash
     comando | grep "patrón"  # Solo procesa STDOUT
     ```
   - Para incluir STDERR en un pipe:
     ```bash
     comando 2>&1 | grep "patrón"
     ```

4. Supresión de salidas:

   - Descartar STDOUT: `comando > /dev/null`
   - Descartar STDERR: `comando 2> /dev/null`
   - Descartar ambos: `comando > /dev/null 2>&1`

5. En scripts:

   ```bash
   #!/bin/bash

   echo "Mensaje normal" >&1  # Explícitamente a STDOUT
   echo "Mensaje de error" >&2  # Explícitamente a STDERR
   ```

6. Capturar en variables:

   ```bash
   salida=$(comando)  # Captura solo STDOUT
   salida_err=$(comando 2>&1)  # Captura STDOUT y STDERR
   ```

7. Uso con `tee`:
   - Para ver y guardar la salida simultáneamente:
     ```bash
     comando | tee salida.log  # Solo STDOUT
     comando 2>&1 | tee salida_completa.log  # STDOUT y STDERR
     ```

Entender y manejar STDOUT y STDERR es crucial para crear scripts robustos, gestionar errores eficazmente y controlar la salida de los programas. Permite una mejor organización de la información y facilita la depuración y el logging en scripts bash.

---

## Pipes

Los pipes (tuberías) en Bash script son una característica poderosa que permite conectar la salida de un comando directamente a la entrada de otro. Esto facilita la creación de flujos de procesamiento complejos combinando comandos simples. Aquí te explico los aspectos clave de los pipes:

1. Concepto básico:

   - Un pipe se representa con el símbolo `|`.
   - Conecta el STDOUT (salida estándar) de un comando al STDIN (entrada estándar) del siguiente.

2. Sintaxis:

   ```bash
   comando1 | comando2
   ```

   La salida de `comando1` se convierte en la entrada de `comando2`.

3. Múltiples pipes:
   Se pueden encadenar varios comandos:

   ```bash
   comando1 | comando2 | comando3
   ```

4. Usos comunes:

   a) Filtrar salida:

   ```bash
   ls -l | grep ".txt"
   ```

   Lista archivos y filtra solo los que tienen extensión .txt.

   b) Contar líneas/palabras:

   ```bash
   cat archivo.txt | wc -l
   ```

   Cuenta las líneas en archivo.txt.

   c) Ordenar y unificar:

   ```bash
   sort archivo.txt | uniq
   ```

   Ordena las líneas y elimina duplicados.

5. Pipes con comandos complejos:

   ```bash
   find . -type f | xargs grep "patrón"
   ```

   Busca "patrón" en todos los archivos del directorio actual y subdirectorios.

6. Pipes y redirección:

   ```bash
   echo "Hola" | tee archivo.txt | tr 'a-z' 'A-Z'
   ```

   Escribe "Hola" en archivo.txt y muestra "HOLA" en la pantalla.

7. Pipes en scripts:

   ```bash
   #!/bin/bash

   cat /etc/passwd | cut -d: -f1 | sort
   ```

   Este script muestra una lista ordenada de usuarios del sistema.

8. Manejo de errores con pipes:
   Por defecto, los pipes solo manejan STDOUT. Para incluir STDERR:

   ```bash
   comando1 2>&1 | comando2
   ```

9. Pipes con subshells:

   ```bash
   (comando1; comando2) | comando3
   ```

   La salida de ambos `comando1` y `comando2` se pasa a `comando3`.

10. Ejemplo práctico - Procesamiento de logs:

    ```bash
    cat access.log | grep "ERROR" | cut -d' ' -f1 | sort | uniq -c | sort -nr
    ```

    Este comando analiza un archivo de log, extrae las líneas con "ERROR", obtiene la primera columna (posiblemente IPs), las ordena, cuenta ocurrencias únicas y ordena por frecuencia.

11. Pipes con comandos de control de flujo:
    ```bash
    cat archivo.txt | while read linea; do
        echo "Procesando: $linea"
    done
    ```
    Lee el archivo línea por línea y procesa cada una.

Los pipes son fundamentales en la filosofía Unix de crear herramientas pequeñas y especializadas que pueden combinarse para realizar tareas complejas. Permiten crear flujos de trabajo eficientes y flexibles, procesando datos de manera secuencial y eficiente.

---

## Strings

Las strings (cadenas de texto) en Bash script son secuencias de caracteres que se utilizan para representar texto. Son fundamentales en la programación de scripts para manejar nombres, mensajes, rutas de archivo y más. Aquí te explico los aspectos clave de las strings en Bash:

1. Definición básica:

   ```bash
   nombre="Juan"
   mensaje='Hola Mundo'
   ```

   Se pueden usar comillas simples ('') o dobles ("").

2. Diferencia entre comillas simples y dobles:

   - Comillas simples: Interpretan todo literalmente.
   - Comillas dobles: Permiten expansión de variables y caracteres especiales.

   ```bash
   echo '$nombre'  # Imprime: $nombre
   echo "$nombre"  # Imprime: Juan
   ```

3. Concatenación:

   ```bash
   saludo="Hola, $nombre"
   completo="$nombre $apellido"
   ```

4. Longitud de una string:

   ```bash
   longitud=${#nombre}
   ```

5. Substrings:

   ```bash
   echo ${nombre:0:2}  # Imprime los primeros 2 caracteres
   echo ${nombre:2}    # Imprime desde el tercer carácter hasta el final
   ```

6. Reemplazo de caracteres:

   ```bash
   echo ${nombre/a/o}  # Reemplaza la primera 'a' por 'o'
   echo ${nombre//a/o} # Reemplaza todas las 'a' por 'o'
   ```

7. Eliminación de prefijo/sufijo:

   ```bash
   archivo="imagen.jpg"
   echo ${archivo%.jpg}  # Elimina el sufijo .jpg
   echo ${archivo#image} # Elimina el prefijo image
   ```

8. Mayúsculas y minúsculas:

   ```bash
   echo ${nombre^^}  # Convierte a mayúsculas
   echo ${nombre,,}  # Convierte a minúsculas
   ```

9. Comparación de strings:

   ```bash
   if [ "$str1" = "$str2" ]; then
       echo "Las strings son iguales"
   fi
   ```

10. Strings vacías:

    ```bash
    if [ -z "$variable" ]; then
        echo "La string está vacía"
    fi
    ```

11. Strings multilínea:

    ```bash
    texto="Primera línea
    Segunda línea
    Tercera línea"
    ```

    O usando here documents:

    ```bash
    texto=$(cat <<EOF
    Primera línea
    Segunda línea
    Tercera línea
    EOF
    )
    ```

12. Procesamiento de strings:

    ```bash
    echo "hola,mundo" | tr ',' ' '  # Reemplaza ',' por espacio
    echo "HoLa" | tr '[:upper:]' '[:lower:]'  # Convierte a minúsculas
    ```

13. Búsqueda en strings:

    ```bash
    if [[ "$texto" == *"buscar"* ]]; then
        echo "Encontrado"
    fi
    ```

14. Dividir una string:

    ```bash
    IFS=':' read -ra ADDR <<< "$STRING"
    for i in "${ADDR[@]}"; do
        echo "$i"
    done
    ```

15. Interpolación de comandos:
    ```bash
    fecha=$(date)
    echo "La fecha actual es: $fecha"
    ```

Las strings en Bash son muy versátiles y se utilizan extensivamente en casi todos los scripts. Su manejo eficiente es crucial para procesar texto, manejar entradas de usuario, trabajar con archivos y mucho más.

---
