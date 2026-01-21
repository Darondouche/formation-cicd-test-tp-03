# Récupération de la liste des commandes
GET http://host.docker.internal:8080/api/orders

# On attend un code 200 OK
HTTP 200

[Asserts]
# 1. Vérifie qu'on reçoit bien une liste (tableau) de 2 éléments
jsonpath "$" count == 2

# 2. Vérifie le premier élément (Laptop)
jsonpath "$[0].id" == 1
jsonpath "$[0].product" == "Laptop"
jsonpath "$[0].price" == 1200.0

# 3. Vérifie le second élément (Mouse)
jsonpath "$[1].id" == 2
jsonpath "$[1].product" == "Mouse"
jsonpath "$[1].price" == 25.0