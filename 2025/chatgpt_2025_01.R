library(openai)
library(tidyverse)

prompt <- "Crie um código R que leia o dataset mtcars e calcule a média de mpg por cyl."

response1 <- openai::create_chat_completion(openai_api_key = api_key ,
  model = "gpt-3.5-turbo",
  messages = list(list(role = "user", content = prompt))
)

cat(response1$choices$message.content)

prompt <- " 
Crie um código R que:
1. Leia o dataset mtcars.
2. Agrupe os dados pela coluna 'cyl'.
3. Calcule a média de 'mpg' para cada grupo.
4. Retorne o resultado.
" 

response2 <- openai::create_chat_completion(openai_api_key = api_key ,
  model = "gpt-3.5-turbo",
  messages = list(list(role = "user", content = prompt))
)

cat(response2$choices$message.content)


#'[Utilizando o pacote tidyverse]
#'
prompt <- "Crie um código R que leia o dataset mtcars e calcule a média de mpg por cyl. Utilize apenas funcoes do dplyr"

response1 <- openai::create_chat_completion(openai_api_key = api_key ,
                                            model = "gpt-3.5-turbo",
                                            messages = list(list(role = "user", content = prompt))
)

cat(response1$choices$message.content)

prompt <- " 
Crie um código R que:
1. Leia o dataset mtcars.
2. Agrupe os dados pela coluna 'cyl'.
3. Calcule a média de 'mpg' para cada grupo.
4. Utilize apenas funcoes do dplyr.
5. Retorne o resultado.
" 

response2 <- openai::create_chat_completion(openai_api_key = api_key ,
                                            model = "gpt-3.5-turbo",
                                            messages = list(list(role = "user", content = prompt))
)

cat(response2$choices$message.content)
