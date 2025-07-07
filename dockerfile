# Usa un'immagine base di Python. Python 3.10 è una scelta comune e stabile.
FROM python:3.10-slim-buster

# Imposta la directory di lavoro all'interno del container.
WORKDIR /app

# Copia il file requirements.txt e installa le dipendenze.
# Questo passo viene eseguito prima del resto del codice per ottimizzare la cache di Docker.
COPY requirements.txt .
RUN pip install --upgrade pip && pip install --no-cache-dir -r requirements.txt

# Copia lo script Python.
# Assicurati che il nome del file qui corrisponda esattamente al tuo script.
COPY LLM.py .

# Comando per avviare lo script Python quando il container viene eseguito.
# L'opzione '-u' per python impedisce il buffering dell'output,
# così i log e i print() appaiono immediatamente.
CMD ["python", "-u", "LLM.py"]