import seaborn as sns
import matplotlib.pyplot as plt

# Datos de ejemplo
x = [1, 2, 3, 4, 5]
y = [2, 4, 6, 8, 10]

# Configurar el estilo de Seaborn
sns.set(style="whitegrid")

# Crear el gráfico de dispersión utilizando Seaborn
plt.figure(figsize=(8, 6))  # Tamaño de la figura
sns.scatterplot(x=x, y=y, color='blue', marker='o', s=100)  # Crear el scatter plot
plt.title('Gráfico de dispersión')  # Título del gráfico
plt.xlabel('Eje X')  # Etiqueta del eje X
plt.ylabel('Eje Y')  # Etiqueta del eje Y
# Guardar la gráfica en una imagen en una carpeta
nombre_archivo = 'grafica_seaborn.png'
ruta_carpeta = 'lib/assets/grafica'  # Usamos / en lugar de \

# Combina la ruta de la carpeta con el nombre del archivo
ruta_completa = f'{ruta_carpeta}/{nombre_archivo}'

# Guarda la gráfica en la ruta especificada
plt.savefig(ruta_completa)

# Muestra la gráfica
plt.show()
