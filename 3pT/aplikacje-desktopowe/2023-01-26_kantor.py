import tkinter as tk
import random as rng

def rgb_to_hex(rgb):
    return '%02x%02x%02x' % rgb

def conv(key):
    for i in range(3):
        if(key in kursy[i]):
            kurs = kursy[i][key]
            _output.config(text=float(_input.get("1.0",tk.END)))

bgcolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"
btncolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"
screencolor = background=f"#{rgb_to_hex((rng.randint(0,255),rng.randint(0,255),rng.randint(0,255)))}"

window = tk.Tk()
window.resizable(False,False)
kantor = tk.Frame(master=window,padx=5,pady=5,background=bgcolor)
kantor.pack()

kursy = [{'AFN':0.054,'ALL':0.040,'DZD':0.034},{'AOA':0.0099,'ARS':0.031,'AMD':0.012},{'BOB':0.69,'EUR':4.71,'USD':4.83}]

for i in range(4):
    if(not i):
        frame = tk.Frame(
            master=kantor,
            height=10,
            padx=0.1,
            pady=5,
            background=bgcolor
        )
        frame.grid(row=0,column=0, columnspan=3)
        _input = tk.Text(master=frame,height=3, width=8,background=screencolor)
        _input.pack(side='left')
        tk.Label(master=frame, text="=>", width=8, height=3, borderwidth=0,relief=tk.RAISED,background=bgcolor,).pack(side='left')
        _output = tk.Label(master=frame,height=3, width=8,background=screencolor)
        _output.pack(side='left')

        continue
    j=0
    for key in kursy[i-1]:
        frame = tk.Frame(
            master=kantor,
            width=8,
            height=3,   
            padx=0.1,
            pady=5,
            background=bgcolor
        )
        frame.grid(row=i,column=j)
        tk.Button(master=frame, text=key, width=8, height=3, borderwidth=1,relief=tk.RAISED,background=btncolor,command=lambda:conv(key)).pack()
        j+=1

window.mainloop()