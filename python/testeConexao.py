import requests;

res = requests.get('http://localhost:3000/listar');

if res:
    print("As APIs estão se comunicando corretamente.");