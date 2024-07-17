#!/bin/bash

camisa()
{
    curl -is -H "user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36" 'https://www.nike.com.br/camisa-nike-brasil-ii-202223-torcedor-pro-masculina-022844.html' > camisa.html

    checkProduto=$(cat camisa.html | grep -o "Produto Indisponível")    
    if ! [[ $checkProduto ]]; then
        echo "Produto disponível"
        checkTamanho=$(cat camisa.html | tr -d '\n' | grep -oE 'disabled=""\s*name="size"\s*value="[^"]*"\s*data-testid="product-size-G"')

        if ! [[ $checkTamanho ]]; then
            echo "Tem o tamanho"

            curl --request POST \
                --url https://api.sendinblue.com/v3/smtp/email \
                --header 'accept: application/json' \
                --header 'api-key: <api>' \
                --header 'content-type: application/json' \
                --data '{
                    "sender":{"email":"gustavoguarda@gmail.com"},
                    "to":[{"email":"gustavoguarda@gmail.com"}],
                    "textContent":"https://www.nike.com.br/camisa-nike-brasil-ii-202223-torcedor-pro-masculina-022844.html",
                    "subject":"Camisa Nike Brasil II 2022/23 Torcedor Pro Masculina"
                }'
        fi
    fi
}

camisa