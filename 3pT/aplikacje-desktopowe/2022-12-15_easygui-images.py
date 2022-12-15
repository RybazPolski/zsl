import easygui as eg

while(True):
    response = eg.buttonbox("Jaką porę roku wyświetlić?","Pory roku",["Wiosna","Lato","Jesien","Zima","Zamknij"])
    if not response=="Zamknij":
        response = eg.buttonbox("","Pory roku",["Spróbuj ponownie","Zakończ"],response+".gif")
        if response=="Zakończ":
            break
    else:
        break
