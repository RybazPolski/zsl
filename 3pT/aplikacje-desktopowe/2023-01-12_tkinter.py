import tkinter as tk

window = tk.Tk()

border_effects = {
    "flat": tk.FLAT,
    "sunken": tk.SUNKEN,
    "raised": tk.RAISED,
    "groove": tk.GROOVE,
    "ridge": tk.RIDGE,
}

for relief_name, relief in border_effects.items():
    frame = tk.Frame(master=window, relief=relief, borderwidth=5)
    frame.pack(side=tk.LEFT)
    btn = tk.Button(master=frame,text=relief_name)
    btn.pack()

tk.Frame(master=window,height=100,width=100,bg="red").pack()
tk.Frame(master=window,height=50,width=50,bg="yellow").pack()
frame = tk.Frame(master=window,height=25,width=25,bg="blue")
frame.pack()
tk.Frame(master=frame,height=12.5,width=12,bg="green").pack(fill=tk.Y)
tk.Frame(master=frame,height=12.5,width=12,bg="green").pack(fill=tk.Y)


window.mainloop()