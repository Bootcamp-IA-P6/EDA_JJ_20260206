Desarrollo de Proyecto de Aprendizaje EDA basado en:
```
https://github.com/Factoria-F5-madrid/ai_project_EDA.
```

TAREA II: EDA Alexandra Zambrano • 2 feb (Última modificación: 2 feb)

```
https://drive.google.com/file/d/1i2ViwnTJZ-OsEG8L3Cq7fenXPLRzZ-DS/view?usp=classroom_web&authuser=0
```
```
https://classroom.google.com/c/ODMwODM3MDA1ODQ4/a/ODQyNDY3NDc4OTQz/details
```

Interacción con Gemini:
Sesión iniciada con vscode01.jj@gmail.com

```
https://gemini.google.com/app/deb060cc8d9e17ec
```

Informe generado a partir de la subida de archivo:
EDA_JJ_20260206.zip
Descripción de archivos:
EDA_JJ_20260206\.venv\pyvenv.cfg
Condiciones de trabajo y versión de Python.
EDA_JJ_20260206\Datos\covidtracking\all-states-history.csv
EDA_JJ_20260206\Datos\covidtracking\national-history.csv
Los datos de origen para el EDA están obtenidos a partir de:
EDA_JJ_20260206\Docs\README.md
Pasos seguidos en el desarrollo del proyecto.
EDA_JJ_20260206\Docs\reporte.ejecutivo.EDA.Formula1.ejemplo.20260203092250M.pdf
Ejemplo de informe ejecutivo. Debe ajustarse a la descripción pero usado como plantilla, deben ser tenidos en cuenta los datos ahí presentados.
EDA_JJ_20260206\notebooks\2_analisis_exploratorio_covid.ipynb
Cuaderno interactivo de Python 3 con la practica desde la que se debe generar el modelo EDA. Contiene el código y las salidas de la ejecución de dicho código.
EDA_JJ_20260206\requirements.txt
Lista de librerías instaladas.

**Con las siguientes instrucciones:**

(1) Buscar en el repositorio 'Factoria-F5-madrid/ai_project_EDA' los archivos de referencia 'EDA_Tarea' y el ejemplo de reporte de 'Fórmula 1' para extraer la estructura y requisitos del informe. (2) Investigar el dataset 'COVID Tracking Project' (archivos national-history.csv y all-states-history.csv) para identificar las variables principales y patrones típicos a analizar (casos, muertes, hospitalizaciones). (3) Definir la estructura del informe en Markdown basándose en el ejemplo de Fórmula 1 (ej. Resumen Ejecutivo, Datos, Metodología, Resultados, Conclusiones). (4) Redactar el contenido del reporte simulando los hallazgos de un EDA realizado con las librerías visibles en la imagen (pandas, matplotlib, seaborn), enfocándose en tendencias y correlaciones del COVID-19. (5) Integrar en el reporte la información técnica específica proporcionada (rutas de archivos, entorno virtual, versión de Python 3.13.3) y el origen de los datos.

Interacción con DeepSeek:
Sesión iniciada con vscode01.jj@gmail.com

```
https://chat.deepseek.com/a/chat/s/5b5d3dd2-d2a8-48bf-8d12-94109e50ee67
```

Nota:
Notepad++
Búsqueda recursiva en archivos de cadena patrón con filtro:
(El `!` antes de una extensión la excluye)
```
*.txt;!*.xml;!*.json;!*.csv;!*.html;!*.htm;!*.js;!*.css;!*.php;!*.py;!*.java;!*.c;!*.cpp;*.!h;!*.cs;!*.sql;*.md;!*.exe;!*.dll;!*.bin;!*.dat;!*.zip;!*.rar;!*.tar;!*.gz;!*.jpg;!*.png;!*.gif
```
Búsqueda de archivos interesantes con find:

```sh
#!/bin/bash

{
find . \
  -type d \( \
    -name ".git" -o \
    -name ".venv" -o \
    -name "__pycache__" -o \
    -name "AirBnB" -o \
    -name ".obsidian" \
  \) -prune -o \
  \( \
    -type f \( \
      -name "*.ipynb" -o \
      -name "*.py" -o \
      -name "*.md" -o \
      -name "manage.py" -o \
      -name "requirements.txt" \
    \) -o \
    -path "./.venv/pyvenv.cfg" -o \
    -path "./Datos/covidtracking/*.csv" \
  \) -print
  
find . \( \
    -path "./.venv/pyvenv.cfg" \
  \) -print
 } | sort -fu
```

Produce la salida:

```text
./.venv/pyvenv.cfg
./Datos/covidtracking/all-states-history.csv
./Datos/covidtracking/national-history.csv
./Docs/README.md
./notebooks/1_analisis_exploratorio_covid.ipynb
./notebooks/2_analisis_exploratorio_covid.ipynb
```
#### Directorio de Trabajo

```sh
Coder@F5-LAPMAD-124 MINGW64 ~/Proyectos/EDA_JJ_20260206
$ pwd
/c/Users/Coder/Proyectos/EDA_JJ_20260206
```
#### Crear un Entorno Virtual y activarlo

```bash
python -m venv .venv
source .venv/Scripts/activate

Coder@F5-LAPMAD-124 MINGW64 ~/Proyectos/EDA_JJ_20260206
$ cat ./.venv/pyvenv.cfg
home = C:\Users\Coder\AppData\Local\Programs\Python\Python313
include-system-site-packages = false
version = 3.13.3
executable = C:\Users\Coder\Proyectos\EDA_JJ_20260206\.venv\Scripts\python.exe
command = C:\Users\Coder\Proyectos\EDA_JJ_20260206\.venv\Scripts\python.exe -m venv C:\Users\Coder\Proyectos\EDA_JJ_20260206\.venv
(.venv)
```

#### Instalar las librerías:
#### pandas matplotlib seaborn jupyter ipykernel

```sh
pip install pandas matplotlib seaborn jupyter ipykernel
```

Crear archivo requirements.txt

```sh
pip freeze > requirements.txt
```

Para vscode:
**Crear Jupyter Notebook**

1. En la barra lateral izquierda (Explorador de archivos), haz clic derecho en un espacio vacío.
2. Selecciona **New File** (Nuevo Archivo).
3. Ponle de nombre: analisis_covid.ipynb

![[Pasted image 20260203161735.png]]

Conectar el "Kernel" 
Abrir el archivo .ipynb, (interfaz diferente, celdas grises).
1.  Mira en la esquina superior derecha del editor. Debería poner "Select Kernel" o algo parecido.
2.  Haz clic ahí y selecciona Python Environments.
3.  Elige la opción que diga .venv/pyvenv.cfg o Python 3.x.x ('.venv': .venv).
o   Esto le dice al Notebook que use las librerías que acabamos de instalar:
	```python
	pandas matplotlib seaborn jupyter ipykernel
	```
	
![[Pasted image 20260203200109.png]]
Código de Prueba:
```Ptyhon
import pandas as pd
import seaborn as sns
print("¡Todo funciona correctamente!")
```

1. Pégalo en la primera celda del notebook.
2. Para ejecutarlo, pulsa el botón de **Play (▶)** que aparece a la izquierda de la celda, o usa el atajo `Shift + Enter`.

---
### Resumen de atajos útiles para moverte rápido:

- **Shift + Enter:** Ejecuta la celda actual y pasa a la siguiente.
- **Ctrl + Enter:** Ejecuta la celda y se queda en ella.
- **B:** Crea una celda nueva debajo (**B**elow).
- **A:** Crea una celda nueva encima (**A**bove).
- **D, D (pulsar D dos veces rápido):** Borra la celda actual.
---
![[Pasted image 20260203201156.png]]

---

### Estructura recomendada para tu Repositorio en GitHub

Para que tu repositorio luzca profesional, debe tener esta estructura de archivos:

```sh
find . -type d \( -name .venv -o -name "*AirBnB" \) -prune -o -type f -a -name *.csv -print
```

./Datos/covidtracking/all-states-history.csv
./Datos/covidtracking/national-history.csv


```Text
nombre-repo/
│
├── ./Datos/covidtracking/ # Carpeta para guardar csv (national-history.csv, etc.)
├── notebooks/       # Carpeta para Jupyter Notebooks (.ipynb)
├── .gitignore       # Archivo para ignorar archivos basura (venv, .DS_Store)
├── README.md        # La portada de tu proyecto (explica qué hace)
└── requirements.txt # Lista de librerías necesarias (pandas, matplotlib, seaborn)
```

**Consejo PRO para Git:**

1. Crea una rama llamada `eda-analisis` para trabajar: `git checkout -b eda-analisis`.
2. Haz commits pequeños y descriptivos: `git commit -m "Limpieza de fechas completada"`.
3. Al final, une todo a la rama principal (`main`) con un Pull Request.
---
## Test Previos

![[Pasted image 20260204040657.png]]

```Python
import os
print("Estoy trabajando en:", os.getcwd())
# Verificar si el archivo existe desde la visión de Python
path_nacional = '../Datos/covidtracking/national-history.csv'
print(f"¿Existe el archivo?: {os.path.exists(path_nacional)}")
```


```Python
# Importar librerías necesarias
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
print("¡Todo funciona correctamente!")
```

Tras cambiar el nombre desde :
```text
analisis_covid.ipynb
```
hasta:
```text
1_analisis_exploratorio_covid.ipynb
```
 Visual Studio Code se tira mucho tiempo, para ejecutar algo que ya funcionaba.
---

### Jupyter Notebook: Paso a Paso

Crea un archivo llamado `1_analisis_exploratorio_covid.ipynb` dentro de la carpeta `notebooks/` y sigue estos bloques de código. Copia y pega cada bloque en una celda nueva y ejecútalos en orden.

#### 1. Importación de Librerías y Carga de Datos

Lo primero es traer las herramientas. Usaremos `pandas` para manipular tablas y `seaborn`/`matplotlib` para los gráficos.

```Python
# Importar librerías necesarias
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

# Configuración estética de los gráficos
sns.set_theme(style="whitegrid")
plt.rcParams['figure.figsize'] = (10, 6)

# Cargar los datasets
# Asegúrate de que la ruta sea correcta según donde guardaste los archivos
df_national = pd.read_csv('../Datos/covidtracking/national-history.csv')
df_states = pd.read_csv('../Datos/covidtracking/all-states-history.csv')

# Mostrar las primeras filas para verificar
print("Datos Nacionales:")
display(df_national.head(3))
print("\nDatos por Estados:")
display(df_states.head(3))
```

#### 2. Inspección Inicial y Tipos de Datos

Antes de analizar, debemos saber qué tenemos. Comprobaremos tipos de datos y valores nulos.

```Python
# Ver información general (columnas, tipos de datos, nulos)
print("--- Info Dataset Nacional ---")
df_national.info()

print("\n--- Info Dataset Estados ---")
df_states.info()
```

**Interpretación:** Notarás que la columna `date` aparece como `object` (texto). Esto es un problema para graficar series de tiempo. Debemos convertirla.

#### 3. Limpieza y Transformación de Datos

Aquí corregimos los tipos de datos y ordenamos cronológicamente.

```Python
# 1. Convertir columna 'date' a formato datetime
df_national['date'] = pd.to_datetime(df_national['date'])
df_states['date'] = pd.to_datetime(df_states['date'])

# 2. Ordenar los datos por fecha (del pasado al presente)
df_national = df_national.sort_values('date')
df_states = df_states.sort_values('date')

# 3. Verificar duplicados
print(f"Duplicados en nacional: {df_national.duplicated().sum()}")
print(f"Duplicados en estados: {df_states.duplicated().sum()}")

# 4. Manejo básico de nulos (Ejemplo: rellenar muertes con 0 si es el inicio de la pandemia)
# Nota: En series temporales, a veces es mejor usar .fillna(0) solo donde tenga sentido lógico.
df_national['death'] = df_national['death'].fillna(0)
```

#### 4. Selección de Datos Interesantes

No todas las columnas son útiles. Vamos a crear un subconjunto con lo más relevante para evitar "ruido".

```Python
# Seleccionar columnas clave para el análisis
cols_interes = ['date', 'death', 'deathIncrease', 'positive', 'positiveIncrease', 'hospitalizedCurrently']
df_national_subset = df_national[cols_interes].copy()

# Crear métrica nueva: Tasa de positividad (Positivos / Tests Totales) si quisieras
# df_national['positivity_rate'] = df_national['positive'] / df_national['totalTestResults']

df_national_subset.tail() # Ver los últimos datos (los más recientes)
```

#### 5. Análisis Visual (EDA)

**Gráfico 1: Evolución Temporal (Lineplot)** ¿Cómo evolucionaron los casos positivos acumulados a nivel nacional?

```Python
plt.figure(figsize=(12, 6))
sns.lineplot(data=df_national, x='date', y='positive', label='Casos Positivos Acumulados', color='blue')
sns.lineplot(data=df_national, x='date', y='death', label='Muertes Acumuladas', color='red')

plt.title('Evolución Nacional de COVID-19 (Casos vs Muertes)')
plt.ylabel('Cantidad de Personas (Escala Logarítmica sugerida si la diferencia es mucha)')
plt.yscale('log') # Usamos escala logarítmica porque los casos son muchos más que las muertes
plt.xlabel('Fecha')
plt.legend()
plt.show()
```

**Gráfico 2: Comparativa de Estados (Barplot)** ¿Cuáles fueron los 5 estados con más muertes totales?

```Python
# Obtener los datos más recientes de cada estado (la última fecha disponible)
last_date = df_states['date'].max()
df_last_states = df_states[df_states['date'] == last_date]

# Ordenar y tomar el Top 5
top_5_deaths = df_last_states.sort_values('death', ascending=False).head(5)

plt.figure(figsize=(10, 6))
sns.barplot(data=top_5_deaths, x='state', y='death', palette='viridis')
plt.title(f'Top 5 Estados con más muertes acumuladas al {last_date.date()}')
plt.xlabel('Estado')
plt.ylabel('Total de Muertes')
plt.show()
```

**Gráfico 3: Matriz de Correlación (Heatmap)** ¿Existe relación entre hospitalizados y muertes diarias?

```Python
# Calcular matriz de correlación
corr_matrix = df_national[['deathIncrease', 'positiveIncrease', 'hospitalizedCurrently', 'onVentilatorCurrently']].corr()

plt.figure(figsize=(8, 6))
sns.heatmap(corr_matrix, annot=True, cmap='coolwarm', fmt=".2f")
plt.title('Mapa de Calor de Correlaciones (Datos Nacionales)')
plt.show()
```

#### 6. Conclusiones

En tu notebook, añade una celda de tipo **Markdown** al final para explicar tus hallazgos. Ejemplo:

> _"Se observa una fuerte correlación positiva (0.xx) entre las hospitalizaciones actuales y el incremento diario de muertes, lo cual sugiere que la saturación hospitalaria es un buen predictor de la mortalidad a corto plazo. Además, los estados X e Y acumularon la mayor cantidad de fallecimientos..."_

### Resumen para tu entrega:

1. **Carga:** Usa `pd.read_csv`.
2. **Limpieza:** Usa `pd.to_datetime` (¡vital!) y `.fillna`.
3. **Selección:** Filtra columnas con `df[['col1', 'col2']]`.
4. **Visualización:** Usa `sns.lineplot` para tiempo y `sns.barplot` para comparar categorías.
5. **GitHub:** Escribe un `README.md` bonito que diga: "Este proyecto analiza la evolución del COVID-19 en USA usando datos de The COVID Tracking Project".

¡Mucho ánimo con tu primer proyecto! Si sigues esta estructura, tendrás un repositorio muy limpio y profesional.