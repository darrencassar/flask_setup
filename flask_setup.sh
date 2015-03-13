#Setup repo
echo "# flask_setup" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:darrencassar/flask_setup.git
git push -u origin master


#Setup flask for microblog
git clone https://github.com/miguelgrinberg/microblog.git

cd microblog 

# 3.4 > python -m venv flask

sudo easy_install virtualenv

virtualenv flask

flask/bin/pip install flask
flask/bin/pip install flask-login
flask/bin/pip install flask-openid
flask/bin/pip install flask-mail
flask/bin/pip install flask-sqlalchemy
flask/bin/pip install sqlalchemy-migrate
flask/bin/pip install flask-whooshalchemy
flask/bin/pip install flask-wtf
flask/bin/pip install flask-babel
flask/bin/pip install guess_language
flask/bin/pip install flipflop
flask/bin/pip install coverage

echo '#!flask/bin/python' > run.py
echo 'from app import app' >> run.py
echo 'app.run(debug=True)' >> run.py


chmod a+x run.py


./run.py

