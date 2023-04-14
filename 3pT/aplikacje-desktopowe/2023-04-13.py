import sys

from PyQt5.QtWidgets import QApplication, QFormLayout, QLabel, QLineEdit, QWidget

class Window(QWidget):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("QFormLayout")
        self.resize(270, 110)

        layout = QFormLayout()

        layout.addRow("Pierwsza liczba:", QLineEdit())
        layout.addRow("Druga liczba:", QLineEdit())

        result = QLabel("Wynik: ");
        layout.addRow(result, QLineEdit())
        

        self.setLayout(layout)

app = QApplication(sys.argv)
window = Window()
window.show()
app.exec_()