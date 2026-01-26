import tkinter as tk
from tkinter import messagebox, Toplevel, Label, PhotoImage
import time
import threading

# Función para mostrar el pop-up con imagen
def show_reminder():
    # Crear una nueva ventana de pop-up
    popup = Toplevel()
    popup.title("Recordatorio")

    # Mostrar el mensaje
    label_text = Label(popup, text="¡Es hora de tomar tus pastillas! 💊", font=("Arial", 14))
    label_text.pack(pady=10)

    # Botón para cerrar el pop-up
    btn = tk.Button(popup, text="OK", command=popup.destroy)
    btn.pack(pady=10)

# Función que verifica la hora y muestra el pop-up
def check_time():
    while True:
        current_time = time.strftime("%H:%M")
        if current_time in ["14:00", "20:00"]:
            root.after(0, show_reminder)
            time.sleep(60)  # Evita que se muestre varias veces en un minuto
        time.sleep(30)  # Verifica cada 30 segundos

# Crear la ventana principal (pero minimizada)
root = tk.Tk()
root.withdraw()  # Oculta la ventana principal

# Iniciar el chequeo de tiempo en segundo plano
threading.Thread(target=check_time, daemon=True).start()

# Ejecutar la aplicación
root.mainloop()
