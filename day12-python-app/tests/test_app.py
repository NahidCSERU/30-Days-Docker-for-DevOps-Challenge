import app

def test_add():
    assert app.add(2, 3) == 5

def test_subtract():
    assert app.subtract(5, 3) == 2

def test_multiply():
    assert app.multiply(4, 3) == 12

def test_divide():
    assert app.divide(10, 2) == 5
    assert app.divide(5, 0) == "❌ Cannot divide by zero!"
