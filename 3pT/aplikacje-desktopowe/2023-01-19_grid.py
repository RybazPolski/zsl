import tkinter as tk

window = tk.Tk()

# for i in range(3):
#     for j in range(3):
#         frame = tk.Frame(
#             master=window,
#             relief=tk.RAISED,
#             borderwidth=1
#         )
#         frame.grid(row=i,column=j)
#         tk.Label(master=frame, text=f"Row {i}\nColumn {j}").pack()

# window.rowconfigure(0, minsize=50)
# window.columnconfigure( [0, 1, 2, 3], minsize=50)
# label1 = tk.Label(text="1", bg="black", fg="white")
# label2 = tk.Label(text="2", bg="black", fg="white")
# label3 = tk.Label( text="3", bg="black", fg="white")
# label4 = tk.Label( text="4", bg="black" , fg="white")
# label1.grid(row=0, column=0)
# label2.grid(row=0, column=1, sticky="ew")
# label3.grid(row=0, column=2, sticky="ns")
# label4.grid(row=0, column=3, sticky="nsew")

fields = ["Imię","Nazwisko","Adres e-mail", "Numer telefonu","Miasto","Indeks","Kraj"]

for i in range(7):
    for j in range(2):
        frame = tk.Frame(
            master=window,
            borderwidth=1,
        )
        frame.grid(row=i,column=j)
        if j:
            tk.Text(master=frame,height=1).pack()
        else:
            tk.Label(master=frame, text=f"{fields[i]}: ").pack()

window.mainloop()

