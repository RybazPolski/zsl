import sys
from PyQt5.QtWidgets import QApplication, QWidget, QMainWindow, QHBoxLayout, QVBoxLayout
from PyQt5.QtCore import Qt
from PyQt5.QtGui import QPalette, QColor


class Color(QWidget):

    def __init__(self, color):
        super().__init__()
        self.setAutoFillBackground(True)

        palette = self.palette()
        palette.setColor(QPalette.Window, QColor(color))
        self.setPalette(palette)


class MainWindow(QMainWindow):

    def __init__(self):
        super().__init__()

        self.setWindowTitle("QHBoxLayout&QVBoxLayout&Color")

        layout1 = QHBoxLayout()
        
        layout1.setContentsMargins(0, 0, 0, 0)
        layout1.setSpacing(0)

        layout1.addWidget(Color('green'))
        layout1.addWidget(Color('white'))
        layout1.addWidget(Color('#FF8800'))

        widget = QWidget()
        widget.setLayout(layout1)

        self.setCentralWidget(widget)


app = QApplication(sys.argv)
window = MainWindow()
window.show()
app.exec_()