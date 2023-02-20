import tkinter as tk
import random as rng

def rgb_to_hex(rgb):
    return '%02x%02x%02x' % rgb

bgcolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"
btncolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"
screencolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"

window = tk.Tk()
window.resizable(False,False)
calc = tk.Frame(master=window,padx=5,pady=5,background=bgcolor)
calc.pack()

fields = [[],['1','2','3','+'],['4','5','6','-'],['7','8','9','×'],['0','C','=','÷']]

for i in range(5):
    if(not i):
        frame = tk.Frame(
            master=calc,
            height=10,
            padx=0.1,
            pady=5,
            background=bgcolor
        )
        frame.grid(row=0,column=0, columnspan=4)
        tk.Text(master=frame,height=3, width=40,background=screencolor).pack()
        continue
    for j in range(4):
        frame = tk.Frame(
            master=calc,
            width=8,
            height=3,   
            padx=0.1,
            pady=5,
            background=bgcolor
        )
        frame.grid(row=i,column=j)
        tk.Label(master=frame, text=fields[i][j], width=8, height=3, borderwidth=1,relief=tk.RAISED,background=btncolor,).pack()

window.mainloop()