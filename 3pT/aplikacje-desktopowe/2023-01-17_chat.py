import tkinter as tk

window = tk.Tk()

frame = tk.Frame(master=window,height=500,width=300, bg="#00FFFF")
frame.pack(fill=tk.BOTH,expand=1,)

tk.Label(master=frame, text="Hello Mike!", bg='#00FF00', fg='#FFFFFF').place(x=5,y=5)

tk.Label(master=frame, text="Hi!", bg='#316666', fg='#FFFFFF').place(x=275,y=35)

tk.Label(master=frame, text="How are you?", bg='#00FF00', fg='#FFFFFF').place(x=5,y=65)

tk.Label(master=frame, text="Great, and you?", bg='#316666', fg='#FFFFFF').place(x=200,y=95)

tk.Label(master=frame, text="Mee too. Whate are you doing today?", bg='#00FF00', fg='#FFFFFF').place(x=5,y=125)

tk.Label(master=frame, text="Well, I'm thinking what to do.", bg='#316666', fg='#FFFFFF').place(x=122,y=155)

tk.Label(master=frame, text="What about going to the new car", bg='#00FF00', fg='#FFFFFF').place(x=5,y=185)
tk.Label(master=frame, text="exhibition?", bg='#00FF00', fg='#FFFFFF').place(x=5,y=205)

tk.Label(master=frame, text="Ok, when does it open?", bg='#316666', fg='#FFFFFF').place(x=156,y=235)

tk.Label(master=frame, text="At seven o'clock.", bg='#00FF00', fg='#FFFFFF').place(x=5,y=265)

tk.Label(master=frame, text="Ok.", bg='#316666', fg='#FFFFFF').place(x=270,y=305)

window.mainloop()
