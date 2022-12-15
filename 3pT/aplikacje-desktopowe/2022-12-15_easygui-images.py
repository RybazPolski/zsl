import easygui as eg

while(True):
    response = eg.buttonbox("Jaką porę roku wyświetlić?","Pory roku",["Wiosna","Lato","Jesien","Zima","Zamknij"])
    if not response=="Zamknij":
        response = eg.buttonbox("","Pory roku",["Spróbuj ponownie","Zakończ"],response+".gif")
        if response=="Zakończ":
            break
    else:
        break
# P.S działa dla plików nazwanych Wiosna.gif Lato.gif Jesien.gif Zima.gif 