launch open webui:
    mimic("launch anaconda prompt")
    sleep(1000ms)
    "conda activate openwebui"
    key(enter)
    sleep(1000ms)
    'cd "C:/Users/abb064/OneDrive - CSIRO/R/open-webui/pipelines/"'
    key(enter)
    "start.bat"
    key(enter)
    sleep(5000ms)
    mimic("launch anaconda prompt")
    sleep(1000ms)
    "conda activate openwebui"
    key(enter)
    "open-webui serve"
    key(enter)


launch pipelines:
    mimic("launch anaconda prompt")
    sleep(1000ms)
    "conda activate openwebui"
    key(enter)
    sleep(1000ms)
    'cd "C:/Users/abb064/OneDrive - CSIRO/R/open-webui/pipelines/"'
    key(enter)
    "start.bat"
    key(enter)