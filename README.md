# vault
Secrets management

## Set up

    mkdir vault-data
    docker compose up
    
    docker exec -it vault vault operator init

    # Unseal Key 1: zumRSev82ycqnz9sDXYfuylUkk46gQZTxDQAAmYSZ/7o
    # Unseal Key 2: XF6ZAa7AtvR1dJOU9wnGZLWstI6OpHKyFUPXmGbFgxke
    # Unseal Key 3: 7q0Sc4h1nsjgteGQztqgAU1AYMXhr6GdUW3oLWOUT1aQ
    # Unseal Key 4: rIag8o5XAS6EnnVosXcCfofdl7x5v0agesedV3Isi0IN
    # Unseal Key 5: Qd8kSxCsA/VbdvB5G8dQBNnB6LHu82WFjKgeYqFDrh1g

    docker exec -it vault vault operator unseal zumRSev82ycqnz9sDXYfuylUkk46gQZTxDQAAmYSZ/7o
    docker exec -it vault vault operator unseal XF6ZAa7AtvR1dJOU9wnGZLWstI6OpHKyFUPXmGbFgxke
    docker exec -it vault vault operator unseal 7q0Sc4h1nsjgteGQztqgAU1AYMXhr6GdUW3oLWOUT1aQ

    # or 
    
    docker exec -it vault vault operator init -n 1 -t 1

    # Unseal Key 1: zumRSev82ycqnz9sDXYfuylUkk46gQZTxDQAAmYSZ/7o

    docker exec -it vault vault operator unseal zumRSev82ycqnz9sDXYfuylUkk46gQZTxDQAAmYSZ/7o

    Note: this step has to be performed each time the vault container is restarted.

## Get latest release

    ansible-playbook latest-release.yaml --extra-vars "repository=hashicorp/vault"
