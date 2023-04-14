import sys
from PyQt5.QtWidgets import *


class Window(QMainWindow):

    choice = "Trójkąt"

    def __init__(self):
        super().__init__()
        self.setWindowTitle('Obliczanie pola')
        self.setFixedSize(275, 150)
        self.initUI()

    def initUI(self):
        widget = QComboBox()
        widget.addItems(['Trójkąt','Równoległobok'])
        widget.setCurrentIndex(0)
        widget.setInsertPolicy(QComboBox.InsertAlphabetically)

        widget.setFixedSize(100, 20)
        widget.currentIndexChanged[str].connect(self.change_choice)
        self.setCentralWidget(widget)

        label1 = QLabel('Długość podstawy a=', self)
        label1.setFixedWidth(130)
        label1.move(10, 25)
        self.edit1 = QLineEdit('', self)
        self.edit1.setFixedWidth(130)
        self.edit1.move(10, 50)

        label2 = QLabel('Długość wysokości h=', self)
        label2.setFixedWidth(130)
        label2.move(10, 80)
        self.edit2 = QLineEdit('', self)
        self.edit2.setFixedWidth(130)
        self.edit2.move(10, 105)

        btn = QPushButton('Obliczanie pola', self)
        btn.move(145, 50)
        btn.clicked.connect(self.button_clicked)

        self.answer = QLabel('Wynik:', self)
        self.answer.move(145, 105)
        font = self.answer.font()
        font.setWeight(95)
        self.answer.setFont(font)

    def change_choice(self, s):
        self.choice = s

    def button_clicked(self):
        try:
            if self.choice == "Trójkąt":
                wynik = str(int(self.edit1.text()) * 0.5 * int(self.edit2.text()))
            elif self.choice == "Równoległobok":
                wynik = str(int(self.edit1.text()) * 1.0 * int(self.edit2.text()))
            self.answer.setText(f'Wynik: {wynik}')
        except ValueError:
            self.answer.setText('ERROR')



app = QApplication(sys.argv)
window = Window()
window.show()
app.exec_()