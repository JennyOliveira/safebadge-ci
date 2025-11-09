from app.app import soma

def test_soma_inteiros():
    assert soma(2,3) == 5

def test_soma_negativos():
    assert soma(-1, -4) == -5
