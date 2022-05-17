library(dplyr)

print("Ergebnisse der Analyse in den Kommentaren zu finden!")

# Kennenlernen des Datasets
?esoph
head(esoph)

print("")

# Nach cases sortiert
esoph %>%
  select(-ncontrols) %>%
  arrange(desc(ncases))

print("")

# 2. Nach controls sortiert
esoph %>%
  select(-ncases) %>%
  arrange(desc(ncontrols))

print("")

# 3. Abhängigkeit von controls und cases überprüfen
esoph %>%
  select(ncases,ncontrols,agegp) %>%
  arrange(ncases)

print("")

# 4. Summe aller cases pro Alter
esoph %>%
  select(agegp,ncases) %>%
  group_by(agegp) %>%
  summarize(allCases = sum(ncases)) 

print("")

# 5. Summe aller controls pro Alter
esoph %>%
  select(agegp,ncontrols) %>%
  group_by(agegp) %>%
  summarize(allControls = sum(ncontrols)) 

#Aussage von 1.: Der Alkoholkonsum und das Alter haben den grössten Einfluss auf das Erhöhen der Risiken der Erkrankung. 
#Die drei meistbetroffenen Gruppen, die krank wurden, konsumieren wenig bis kein Tobacco.

#Aussage von 2.: Personen, die wenig bis kein Alkohol und Tobacco konsumieren, sind am wahrscheinlichsten, 
#sich testen zu lassen.

#Aussage von 3.: Mehrere der Gruppen, die sich am häufigsten testen lassen, haben die wenigsten Krankheitsfälle. 
#Risikopatienten haben eine vergleichsweise geringe Wahrscheinlichkeit, einen Test durchzuführen.

#Aussage von 4. + 5.: Eine grosse Anzahl der Tests sind statistisch gesehen nicht notwendig. Beispiel: 55-64-Jährige haben 76x 
#mehr Fälle als 25-34-Jährige, aber es werden nur etwas mehr als 2x so viele Tests 
#für 55-64-Jährige durchgeführt als für 25-34-Jährige.