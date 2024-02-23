import tkinter as tk
from tkinter import messagebox

def fazer_login():
    email = entry_email.get()
    senha = entry_senha.get()

    if len(senha) > 6 and "@" in email:
        messagebox.showinfo("Login", "Login bem-sucedido!")
    else:
        messagebox.showwarning("Login", "Erro no login. Verifique as restrições.")

# Criar a janela principal
root = tk.Tk()
root.title("Tela de Login")

# Criar e posicionar widgets
frame = tk.Frame(root, padx=20, pady=20)
frame.pack(padx=10, pady=10)

label_email = tk.Label(frame, text="E-mail:")
label_email.grid(row=0, column=0, padx=5, pady=5)

entry_email = tk.Entry(frame)
entry_email.grid(row=0, column=1, padx=5, pady=5)

label_senha = tk.Label(frame, text="Senha:")
label_senha.grid(row=1, column=0, padx=5, pady=5)

entry_senha = tk.Entry(frame, show="*")
entry_senha.grid(row=1, column=1, padx=5, pady=5)

login_button = tk.Button(frame, text="Login", command=fazer_login)
login_button.grid(row=2, column=0, columnspan=2, pady=10)

# Iniciar o loop principal da interface gráfica
root.mainloop()
