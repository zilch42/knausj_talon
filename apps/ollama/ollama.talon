tag: terminal
-

launch llama: mimic("launch command prompt")

# models
llama fie: 
    "ollama run phi3"
    key(enter)
llama mistral: 
    "ollama run mistral"
    key(enter)
llama open orca: 
    "ollama run mistral-openorca"
    key(enter)
llama wizard: 
    "ollama run wizardlm2 "
    key(enter)
llama mistral: 
    "ollama run mistral"
    key(enter)
llama open orca: 
    "ollama run mistral-openorca"
    key(enter)


llama show help:
    "/?"
    key(enter)

llama show info:
    "/sure"
    key(enter)

llama multiline:
    '""""""'
    key(left:3)

llama exit:
    "/bye"
    key(enter)

llama clear:
    "/clear"
    key(enter)