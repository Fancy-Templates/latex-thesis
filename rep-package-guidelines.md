# Thesis Guidelines: Reproducibility Package

In diesem Dokument fassen wir kurz zusammen, welche Anforderungen an das _reproducibility package_ für eine Bachelor- oder Masterarbeit gestellt werden.
Die Anforderungen gliedern sich in drei Kategorien: **MUSS**, **SOLL** und **KANN**.
**MUSS** stellt die absoluten Mindestanforderungen als Teil der Besteh-Anforderungen für die Arbeit dar, **SOLL** beschreibt die wünschenswerten Eigenschaften des _reproducibility package_ die bei Abwesenheit negativ ausgelegt werden können und **KANN** beschreibt optionale Features, die das _reproducibility package_ aufwerten.
Alle Anforderungen stehen unter Vorbehalt abweichender Absprachen mit dem Betreuer/der Betreuerin der Arbeit (wenn beispielsweise so viele Daten erzeugt werden, dass die Rohdaten nicht mehr sinnvoll gespeichert werden können oder wenn die Rohdaten nicht öffentlich zugänglich gemacht werden können, im Rahmen einer Nutzer-Studie keine separate Software entwickelt wurde, ...).

## Code Artefakte

### **MUSS** Anforderungen

* Das _reproducibility package_ enthält alle Skripte und Daten die während der Arbeit geschrieben und erzeugt wurden. Dies schließt insbesondere die folgenden Komponenten ein;
   * Rohdaten der Evaluation
   * Skripte zur Generierung der Rohdaten
* Eine kurze Dokumentation der Rohdaten und wie die Ergebnisse der Arbeit (plots etc.) aus den Rohdaten hervorgehen.

### **SOLL** Anforderungen

* Skripte, welche die Rohdaten in die Grafiken, Tabellen, etc. der Arbeit umwandeln (beispielweise durch Jupyter Notebooks oder R Markdown).
* Alle beteiligten Komponenten (Software etc., sofern Lizenzrechtlich möglich) inklusive einer Dokumentation wie diese in welcher Reihenfolge ausgeführt werden müssen, um die Rohdaten zu generieren und die Ergebnisse der Arbeit zu reproduzieren.
* Befolgen der gängigen Guidelines (z.B. http://www.practicereproducibleresearch.org/) hinsichtlich Version-Pinning, Dokumentation, setzen von Seeds, etc. - sofern anwendbar.
* Separate Tests für die Evaluation (zumindest eine grundlegende Sicherstellung der Korrektheit der Evaluations-Ergebnisse) - dies bezieht sich explizit nicht auf Unit-Tests für die in der Arbeit geschaffenen Software-Komponenten, sondern speziell auf den Code/Skripte die für die Evaluation der Arbeit verwendet wurden.

## **KANN** Anforderungen

* Bereitstellung eines Docker-Images/einer virtuellen Maschine, die alle Komponenten enthält und die Reproduzierbarkeit der Arbeit erleichtert.
* Ein einzelnes, vollständiges Skript, welche alle Schritte der Reproduktion der Arbeit von Grund-auf ausführt
* Sofern relevant: eine kleinere Testmenge an Rohdaten, die schneller ausgeführt werden kann. 
* "Production-ready" Skripte, welche mit Argumenten etc. für andere Datensets/Szenarien wiederverwendet und ausgebaut werden können.
* Detaillierte Testabdeckung der Evaluations-Skripte, die die Rohdaten generieren und die Ergebnisse der Arbeit erzeugen.

## User Studies

Zusätzlich zu den oben genannten Anforderungen, die sich hauptsächlich auf Software-Artefakte beziehen, sind folgende Anforderungen speziell für User Studies zu berücksichtigen:

### Muss-Anforderungen
- Das Reproducibility Package enthält alle Informationen, die erforderlich sind, um die Studie erneut durchzuführen und die Ergebnisse mit denen der Originalstudie vergleichen zu können.
- Zum Beispiel die verwendeten Fragebögen, Instruktionen für Teilnehmende und Durchführende, Bewertungsschemata, der Untersuchungsgegenstand usw.
- Eine kurze Dokumentation, die beschreibt, was das Reproducibility Package enthält und wie die Studie repliziert werden kann. Da die Durchführung der Studie typischerweise in der zugrunde liegenden Arbeit beschrieben wird, kann hierfür auch auf diese referenziert werden.

### Soll-Anforderungen
- Wo relevant, sind die Informationen sowohl in einem leicht lesbaren Format als auch im Originalformat vorhanden. Beispielsweise lässt sich eine in LimeSurvey erstellte Umfrage sowohl als PDF (zum einfachen Anschauen/Ausdrucken) als auch als LimeSurvey-Datei (.lss) exportieren. Letztere lässt sich problemlos in eine andere LimeSurvey-Instanz importieren.

### Kann-Anforderungen
- Bereitstellung eines Docker- oder VM-Images, mit dem die Studie leicht repliziert werden kann.