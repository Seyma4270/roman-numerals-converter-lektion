#!/bin/bash
dnf update -y
dnf install python3 -y
dnf install python3-pip -y
pip3 install flask
dnf install git -y
cd /home/ec2-user
FOLDER="https://raw.githubusercontent.com/Seyma4270/roman-numerals-converter-lektion/refs/heads/main"
wget ${FOLDER}/roman-numerals-converter-app.py
wget -P templates ${FOLDER}/templates/convert.html
wget -P templates ${FOLDER}/templates/index.html
python3 roman-numerals-converter-app.py

