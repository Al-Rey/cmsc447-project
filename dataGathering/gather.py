import pokebase as pb
import requests
import json

x = requests.get('https://pokeapi.co/api/v2/pokemon/ditto')
test = json.loads(x.text)
print(test)