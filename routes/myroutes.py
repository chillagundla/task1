from config import app

@app.get('/home')
def greetnow():
    return "i print a massege"

@app.get('/sample')
def fun():
    return " This is a sample page"