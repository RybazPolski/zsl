import tkinter as tk
import random as rng

def input_into_entry(symbol):
    _input.insert(tk.END, symbol)

def input_into_entry_sqrt(symbol):
    _input.insert(0, symbol)

def clear():
    _input.delete(0, tk. END)

def calculation():
    text=_input.get()
    result=0
    if '+' in text:
        splitted_text=text.split('+')
        num1=float(splitted_text[0])
        num2=float(splitted_text[1])
        result=num1+num2
    if '-' in text:
        splitted_text=text.split('-')
        num1=float(splitted_text[0])
        num2=float(splitted_text[1])
        result=num1-num2
    if '*' in text:
        splitted_text=text.split('*')
        num1=float(splitted_text[0])
        num2=float(splitted_text[1])
        result=num1*num2
    if '/' in text:
        splitted_text=text.split('/')
        num1=float(splitted_text[0])
        num2=float(splitted_text[1])
        result=num1/num2
    clear ()
    _input.insert(0, result)


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
        _input = tk.Entry(master=frame,width=17,background=screencolor,font=('Consolas 20'))
        _input.pack()
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
        butt = tk.Button(master=frame, text=fields[i][j], width=6, height=3, borderwidth=1,relief=tk.RAISED,background=btncolor,command=lambda fields=fields, i=i, j=j:input_into_entry(fields[i][j]))
        butt.pack()
        if fields[i][j]=='=':
            butt.config(command=calculation)


window.mainloop()