# LLM
# 🤖 Assistente AI per Meeting Aziendali

Questo progetto implementa un assistente basato su intelligenza artificiale per l'analisi e la sintesi automatica delle trascrizioni di meeting aziendali. Utilizzando il modello `gpt-3.5-turbo` di OpenAI, lo script è in grado di generare riassunti concisi, estrarre attività chiave e fornire metriche di validazione sulla qualità dell'analisi.

Il progetto adotta un approccio di programmazione procedurale per garantire chiarezza, leggibilità e modularità delle funzioni, rendendolo ideale per compiti mirati come l'elaborazione di trascrizioni.

## 🌟 Caratteristiche Principali

* **Riassunto Automatico:** Genera riassunti professionali dei meeting, evidenziando temi principali, decisioni prese, problematiche e azioni da intraprendere.
* **Estrazione Attività:** Identifica e elenca tutte le attività o compiti assegnati durante il meeting, con assegnazione automatica al "Team" o "Da assegnare" se il responsabile non è esplicitamente menzionato.
* **Validazione e Controllo Qualità:** Esegue test automatici per riconoscere i partecipanti, verificare l'estrazione delle attività e controllare la copertura dei concetti chiave nel riassunto.
* **Punteggio di Accuratezza:** Calcola un punteggio finale da 0 a 100 e fornisce una valutazione qualitativa (Eccellente, Buono, Da migliorare) sull'accuratezza dell'analisi.
* **Output Completo:** Stampa il riassunto, l'elenco delle attività e le metriche di validazione, salvando il tutto in un file `.txt` scaricabile.
* **Interfaccia Semplice:** Progettato per l'uso in Google Colab con caricamento manuale del file di trascrizione per maggiore controllo e sicurezza.

## 🛠️ Tecnologie Utilizzate

* **Python 3**
* **OpenAI API:** Per l'interazione con i modelli LLM (`gpt-3.5-turbo`).
* **Google Colab:** Ambiente di sviluppo principale per l'esecuzione del notebook.
* **Librerie Python:** `openai`, `io`, `re`, `typing`, `google.colab.files`.

## 🚀 Guida all'Installazione e Utilizzo

Per utilizzare questo assistente, segui i passaggi:

1.  **Clona il Repository:**
    ```bash
    git clone [https://github.com/tuo-utente/nome-del-repository.git](https://github.com/tuo-utente/nome-del-repository.git)
    cd nome-del-repository
    ```
    *(Sostituisci `tuo-utente` e `nome-del-repository` con i valori effettivi del tuo repository GitHub).*

2.  **Crea un Ambiente Virtuale (Consigliato):**
    ```bash
    python -m venv venv
    # Attiva l'ambiente virtuale
    source venv/bin/activate  # Su Linux/macOS
    # venv\Scripts\activate   # Su Windows
    ```

3.  **Installa le Dipendenze:**
    Le dipendenze necessarie sono elencate in `requirements.txt`. 
    ```bash
    pip install -r requirements.txt
    ```

4.  **Configura la Chiave API di OpenAI:**
    Apri il file `LLM.py`. Attualmente, la chiave API è inserita direttamente nel codice per scopi di dimostrazione/test in ambiente Colab:
    ```python
    API_KEY = "sk-proj-..." # Inserisci qui la tua chiave API di OpenAI
    client = openai.OpenAI(api_key=API_KEY)
    ```
    **ATTENZIONE:** Per un utilizzo in produzione o per la condivisione pubblica del codice, è **fortemente raccomandato** caricare la chiave API da variabili d'ambiente (es. tramite un file `.env` e `python-dotenv`) per motivi di sicurezza, anziché hardcodarla.

5.  **Prepara la Trascrizione del Meeting:**
    Assicurati di avere un file di testo contenente la trascrizione del meeting, nominato `meeting_transcription.txt`. Questo file verrà caricato manualmente durante l'esecuzione dello script in Colab.

6.  **Esegui il Notebook in Google Colab:**
    * Apri `LLM.py` in Google Colab.
    * Esegui le celle in sequenza.
    * Quando richiesto, carica il file `meeting_transcription.txt` tramite l'interfaccia di Colab.
    * Lo script processerà la trascrizione e fornirà l'output direttamente nella console di Colab e salverà un file `meeting_analisi_finale.txt` che verrà automaticamente scaricato.

## 📂 Struttura del Progetto

.
├── LLM.py              # Script principale dell'assistente AI
├── requirements.txt    # Elenco delle dipendenze Python 

## 📈 Metriche di Validazione

Il sistema calcola un punteggio di accuratezza basato su:
* Copertura dei partecipanti identificati.
* Copertura dei concetti chiave presenti nel riassunto.
* Numero di attività estratte rispetto a quelle stimate nella trascrizione.

Il punteggio finale viene classificato come:
* **ECCELLENTE** ✅: `>= 80/100`
* **BUONO** ✅: `>= 65/100`
* **DA MIGLIORARE** ⚠️: `< 65/100`

## 🤝 Contributi

Sentiti libero di contribuire a questo progetto! Puoi aprire issue per segnalare bug o suggerire miglioramenti, oppure inviare pull request con nuove funzionalità.
**Sviluppato con passione da Raffaele Diomaiuto, studente in AI Development.**
