import seaborn as sns
import matplotlib.pyplot as plt

tips = sns.load_dataset("tips")
##sns.kdeplot(data=tips, x="tip", hue="sex", cumulative=False, fill=True, bw_adjust=1)
sns.histplot(data = tips, x= 'tip', bins = 15, cumulative=False,hue='sex',stat='count',multiple='dodge')
# Guardar la gráfica en una imagen en una carpeta
nombre_archivo = "grafica_seaborn.png"
ruta_carpeta = "lib/assets/grafica"  # Usamos / en lugar de \

# Combina la ruta de la carpeta con el nombre del archivo
ruta_completa = f"{ruta_carpeta}/{nombre_archivo}"

# Guarda la gráfica en la ruta especificada
plt.savefig(ruta_completa)

# Muestra la gráfica
plt.show()
