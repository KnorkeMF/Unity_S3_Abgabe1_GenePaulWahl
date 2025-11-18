VAR fluppingtonVisited = false
VAR knatterboldVisited = false

-> Beginning

===Beginning===
Ich schreite auf die beiden Gestalten zu, die vor mir stehen wie zwei vergessene Denkmäler höfischer Absonderlichkeit. #Player

Sir Fluppington der Vielredner glänzt in einer Rüstung, deren metallisches Scheppern vermutlich noch im Jenseits hallt. #Fluppington
Magister Knatterbold starrt mit einer Intensität auf den Himmel, als wolle er ihm ein Geständnis entlocken. #Knatterbold

Ich sammle meinen Mut wie ein Mensch, der gerade merkt, dass er gar keinen dabei hat. #Player

Wen spreche ich zuerst an?

* Sir Fluppington, den Klangvollen. #Player
-> BeiFluppington

* Magister Knatterbold, den Unberechenbaren. #Player
-> BeiKnatterbold



===BeiFluppington===
{fluppingtonVisited == false:
    Sir Fluppington: "Hoho! Wer stapft da heran wie ein philosophisch verwirrter Pfau im Morgengrauen?" #Fluppington
    ~ fluppingtonVisited = true
-else:
    Sir Fluppington: "Nun also kehrt Ihr zu mir zurück – der strahlenden Säule der Erkenntnis!" #Fluppington
}

PLAYER: "Ein Reisender, der nach Antworten sucht." #Player
Sir Fluppington: "Ausgezeichnet! Antworten liebe ich – vor allem, wenn ich sie geben darf!" #Fluppington

Wie reagiere ich?

+ "Ihr seid… bemerkenswert laut, Sir Fluppington." #Player
Sir Fluppington: "Laut? Nein, mein Freund – ich bin akustisch dominant!" #Fluppington
-> FluppingtonAuswahl

+ "Euer Helm irritiert meine Augen." #Player
Sir Fluppington: "Gut! Er soll die Schwachen blenden und die Mutigen belehren!" #Fluppington
-> FluppingtonAuswahl

+ "Steht Ihr immer so stramm?" #Player
Sir Fluppington: "Stramm? Dies ist das heroische Grundniveau!" #Fluppington
-> FluppingtonAuswahl



=FluppingtonAuswahl
Sir Fluppington: "Wünscht Ihr einen Ratschlag von titanischer Bedeutung?" #Fluppington

* Ja, gebt mir euren Ratschlag. #Player
-> RatVonFluppington

* Nein, ich gehe jetzt zu Magister Knatterbold. #Player
-> BeiKnatterbold



===RatVonFluppington===
Sir Fluppington hebt eine Hand, als wolle er die Wolken maßregeln. #Fluppington
Sir Fluppington: "Merkt Euch dies: Ein Mann ohne Ziel ist wie ein Eimer ohne Boden – viel Lärm um nichts." #Fluppington
PLAYER: "Das… ist eine interessante Sichtweise." #Player

* Weiter zu Magister Knatterbold. #Player
-> BeiKnatterbold



===BeiKnatterbold===
{knatterboldVisited == false:
    Magister Knatterbold: "Aha! Ein fremder Sterblicher nähert sich meinem intellektuellen Wirkungsbereich!" #Knatterbold
    ~ knatterboldVisited = true
-else:
    Magister Knatterbold: "So! Zurückgekehrt, wie ein Gedanke, der sich weigert, vergessen zu werden." #Knatterbold
}

PLAYER: "Ich suche Antworten – oder zumindest gut klingende Sätze." #Player
Knatterbold: "Dann seid Ihr bei mir richtig! Meine Worte haben oft mehr Klang als Sinn!" #Knatterbold

Wie antworte ich?

+ "Was erforscht Ihr gerade?" #Player
Knatterbold: "Die Möglichkeit, Wolken höfisches Benehmen beizubringen." #Knatterbold
-> KnatterboldAuswahl

+ "Warum wirkt Ihr so… angespannt?" #Player
Knatterbold: "Ich bin nicht angespannt. Ich bin vorsorglich entrüstet!" #Knatterbold
-> KnatterboldAuswahl

+ "Seid Ihr immer so seltsam?" #Player
Knatterbold: "Nein. Manchmal bin ich noch schlimmer." #Knatterbold
-> KnatterboldAuswahl



=KnatterboldAuswahl
Knatterbold: "Wollt Ihr eine Wahrheit hören, die so verwirrend ist, dass sogar die Vernunft Urlaub macht?" #Knatterbold

* Ja, bitte sehr. #Player
-> Erkenntnis

* Nein, ich gehe zurück zu Fluppington. #Player
-> ZurueckZuFluppington



===Erkenntnis===
Knatterbold: "Die tiefste Wahrheit lautet: Die Zukunft ist wie eine überreife Traube – prall, klebrig und voller Überraschungen." #Knatterbold
PLAYER: "…Eine starke Metapher." #Player
Knatterbold: "Oder einfach klebrig." #Knatterbold

* Ich gehe zu Sir Fluppington zurück. #Player
-> ZurueckZuFluppington



===ZurueckZuFluppington===
Sir Fluppington steht bereits parat, als hätte er geahnt, dass ich zurückkomme. #Fluppington
Sir Fluppington: "Ich spüre eure Rückkehr wie ein poetischer Windstoß!" #Fluppington

Was mache ich?

+ Ich rufe beide zusammen. #Player
-> Versammlung

+ Ich spreche nur mit Sir Fluppington. #Player
-> AnspracheFluppington

+ Ich rufe Knatterbold herüber. #Player
-> AnspracheKnatterbold



===Versammlung===
PLAYER: "Fluppington! Knatterbold! Hört mich an!" #Player

Sir Fluppington tritt heran, bereit für jede Art sinnloser Wichtigkeit. #Fluppington
Knatterbold tritt heran, als prüfe er meinen geistigen Zustand. #Knatterbold

Wie verkünde ich mich?

* "Ihr seid beide glorreich verwirrend." #Player
-> EndeWahnsinn

* "Ich verlasse diesen Ort voller Unvernunft." #Player
-> EndeAbreise

* "Ich erkläre mich zum neuen Herrscher!" #Player
-> EndeKrone



===AnspracheFluppington===
Sir Fluppington: "Ich lausche mit dem ganzen Gewicht meiner Bedeutung!" #Fluppington
PLAYER: "Dann seid bereit für die Wahrheit…" #Player
-> EndeWahnsinn



===AnspracheKnatterbold===
Knatterbold: "Ihr ruft,  ich erscheine! Wie ein unpassender Gedanke!" #Knatterbold
PLAYER: "Ich muss… weg." #Player
-> EndeAbreise



===EndeWahnsinn===
PLAYER: "Ihr seid beide glorreich verwirrend." #Player
Sir Fluppington: "Naturgemäß!" #Fluppington
Knatterbold: "Ich notiere es. Für spätere Verwirrung." #Knatterbold
-> END



===EndeAbreise===
PLAYER: "Ich verabschiede mich. Dieser Ort ist… zu viel." #Player
Sir Fluppington: "Kommt wieder, wenn Ihr erneut zu wenig seid!" #Fluppington
Knatterbold: "Oder wenn die Realität langweilig wird!" #Knatterbold
-> END



===EndeKrone===
PLAYER: "Ich erhebe Anspruch auf den Thron dieses Reiches!" #Player
Sir Fluppington: "Ich biete meine laute Loyalität an!" #Fluppington
Knatterbold: "Und ich meine unzuverlässige Weisheit!" #Knatterbold
PLAYER: "…Angenommen." #Player
-> END
