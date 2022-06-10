from flask import *  
app = Flask(__name__)  
  
@app.route('/')  
def home():
    return render_template('index.html')

@app.route('/login',methods = ['POST'])  
def login():  
    uname=request.form['uname'] 
    return "Welcome %s" %uname  
   
if __name__ == '__main__':  
   app.run(debug = True)  