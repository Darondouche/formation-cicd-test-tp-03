# Vérification du endpoint de santé
GET http://host.docker.internal:8080/health

# On attend un code 200 OK
HTTP 200

[Asserts]
# On vérifie que le JSON contient status = UP
jsonpath "$.status" == "UP"