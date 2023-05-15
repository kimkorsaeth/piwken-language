#set page(paper: "us-trade")
#set text(font: "Cambria", size: 9pt)
#set block(spacing: 0.65em)

#let dictwordcount= counter("dictwordcount")
#dictwordcount.update(0)
#let defcount= counter("defcount")

#let bind(body)= [\u{361}] + body
#let bold(body)= [*#body*]
#let high(body)= body + [\u{301}]
#let longv(body)= body + [\u{2d0}]
#let macr(body)= body + [\u{304}]
#let lang= [P#macr[i]wkén]
#let langeng= [Paywakin]

#let dictletter(it) = heading(numbering: none, outlined: false, it)
#let dictentry(term, ipa, pos) = dictwordcount.step()+text(weight: "bold", size: 10pt, [#term ])+[/#ipa/]+emph[ #pos.]+defcount.update(1)
#let dictappend(term, ipa) = dictwordcount.step()+text(weight: "bold", [ #sym.dot.c #term ])+[/#ipa/]
#let dictdef(text) = text
#let dictdefs(text) = bold[#defcount.display() ] + text + defcount.step()
#let dictexample(quote, translation) = emph[#quote "#translation"]
#let usage(it) = par[*Usage notes:* #it]

= How to read this dictionary

The entries in this dictionary are organized according to their stems. Alphabetic sorting does not take into account preverbal affixes. 

== Qualifications for entries
The following things warrant a distinct entry:
- a new root
- change of verb class
- change of part of speech
- rightward reduplication of the root
- presence of derivational affixes
\
The following things do not warrant a unique entry, and are instead appended to an existing entry:
- change between cislocative and translocative preverbal affix
- verb phrases where the presence of a certain argument alters the meaning in an unpredictable manner 
- presence of locomotive stem that alters the meaning in an unpredictable manner
- full reduplication that alters the meaning in an unpredictable manner
\
The following things do not warrant a unique entry nor an appended entry:
- declensions that behave normally
- presence of locomotive stem that behaves normally
- full reduplication of the root that behaves normally
\
While the distinction of verbal and nominal stems is fairly weak in #langeng, the dictionary separates them to aid in legibility for English speakers. If a stem has both nominal and verbal applications, they will be separated into discrete entries (e.g. héx #emph['speech'], #macr[a]héx #emph['talk, speak']).

== How entries are formed

Dictionary entries follow a set structure.

First, in larger bold print is the lemma. 

Followed by IPA

Then the part of speech is declared in abbreviated form. 
- #emph[n.] - noun
- #emph[v.] - verb
- #emph[det.] - determiner
- #emph[pn.] - pronoun
- #emph[dem.] - demonstrative

then definitions. if there's only one, it's written straight out. if there's several, they're numbered. They should be in descending order based on commonness, but not a fixed rule. 
If it's a nominal definition, it specifies the concept or thing.
If it's a verbal definition, the action or event is written as a phrase e.g. "they fall asleep". since there is no number distinction on verbs, using "they" and "them" is no big deal. 

Examples of phrases:
- Unergative "it is playing" 
- Unaccusative "they set off"
- Transitive "they play it"
- Ditransitive "they pay it to them"
- Reflexive "they see themselves"

context for definitions is provided in parentheses at the start

Finally, usage notes may be added to the entry to explain some part of its use that may not be evident from its definition

#set page(columns: 2)

//%%%%%%%%%%%%%%
//%   A a
//%%%%%%%%%%%%%%
#dictletter[A]

#dictentry[#macr[a]twe][átwe][v]
    #dictdefs[go]
    #dictdefs[(machinery) it runs, it is in operation]
    #dictdefs[(media) it plays]
    #dictappend([y#macr[a]twe], [#high[j]átwe])
        #dictdef[(stationary machinery) it runs, it is in operation]

#dictentry[#macr[a]tweyii][átwej#longv[i]][v]
    #dictdef[they run it, they play it, they operate it]
    #dictappend[y#macr[a]tweyii][játwej#longv[i]]
        #dictdef[(stationary machinery) they run it, they operate it]

#dictentry[wàtwew][#high[w]atwew][v]
    #dictdefs[they set off]
    #dictdefs[(racing) the race starts]
    #usage[Previously only used for foot races, these days refers to any kind of competition of speed.]


//%%%%%%%%%%%%%%
//%   E e
//%%%%%%%%%%%%%%
#dictletter[E]



//%%%%%%%%%%%%%%
//%   H h
//%%%%%%%%%%%%%%
#dictletter[H]

#dictentry[ah#macr[e]eps][a#high[h]#longv[é]ps][v]
    #dictdefs[it bends non-destructively]
    #dictdefs[they bend a body part]

#dictentry[ah#macr[e]epsii][a#high[h]#longv[é]ps#longv[i]][v]
    #dictdef[they bend it]

#dictentry[wh#macr[e]epss][w#high[h]#longv[é]pss][v]
    #dictdefs[it yields, it bends out of shape]
    #dictdefs[it breaks, it snaps from deformation]


#dictentry[wh#macr[e]epssii][w#high[h]#longv[é]pss#longv[i]][v]
    #dictdefs[they bend it out of shape]
    #dictdefs[they break it, they snap it]

#dictentry[héx][héɬ][n]
    #dictdefs[language]
    #dictdefs[speech, utterance]

#dictentry[#macr[a]héx][áhéɬ][v]
    #dictdefs[it is mentioned]
    #dictdefs[they talk]
    #dictdefs[they say it]

#dictentry[hikúak][hikúak][n]
    #dictdefs[(uncountable) time]
    #dictdefs[length of time]
    #dictdefs[season, time of year]


//%%%%%%%%%%%%%%
//%   I i
//%%%%%%%%%%%%%%
#dictletter[I]

#dictentry[ikà][i#high[k]a][n]
    #dictdef[goat]

//%%%%%%%%%%%%%%
//%   K k
//%%%%%%%%%%%%%%
#dictletter[K]

#dictentry[kàa][#high[k]#longv[a]][n]
    #dictdef[person, particularily indigenous north american]

#dictentry[akìi][a#high[k]#longv[i]][v]
    #dictdefs[it is readable, it is legible]
    #dictdefs[they write it, they type it]
    #dictdefs[they put a signature on it]

#dictentry[kìit#macr[e]][#high[k]#longv[i]#high[t]é][n]
    #dictdef[bird]

#dictentry[wk#macr[u]t][w#high[k]út][v]
    #dictdef[they notice it, they sense it]

#dictentry[wk#macr[u]tú][w#high[k]útú][v]
    #dictdef[it incites/they incite political awareness]

//%%%%%%%%%%%%%%
//%   M m
//%%%%%%%%%%%%%%
#dictletter[M]

#dictentry[#macr[i]map][ímap][v]
    #dictdef[it hungers them]
    #dictexample[it #macr[i]mapik][I'm hungry (lit. something hungers me)]

#dictentry[méemìkà][m#longv[#high[e]]#high[m]i#high[k]a][n]
    #dictdef[sheep]

#dictentry[im#macr[o]keena][i#high[m]k#longv[e]na][v]
    #dictdefs[it is bright]
    #dictdefs[it shines]
    #dictdefs[it reflects in a surface]

#dictentry[im#macr[o]keeyiina][i#high[m]k#longv[e]j#longv[i]na][v]
    #dictdefs[it shines on it, it illuminates it]
    #dictdefs[it reflects it on its surface]

//%%%%%%%%%%%%%%
//%   N n
//%%%%%%%%%%%%%%
#dictletter[N]

#dictentry[#macr[i]néw][ínéw][v]
    #dictdefs[it is what]
    #dictdefs[they are who]

#dictentry[w#macr[o]néwé][#high[w]néwé][v]
    #dictdef[it goes to where]

#dictentry[nín#macr[o]n][ní#high[n]n][n]
    #dictdef[the sun]

//%%%%%%%%%%%%%%
//%   P p
//%%%%%%%%%%%%%%
#dictletter[P]

#dictentry[#macr[i]pa][ípa][v]
    #dictdef[it is large, they are large]

#dictentry[w#macr[o]pap][#high[w]pap][v]
    #dictdef[it grows, they grow]

#dictentry[p#macr[i]wkén][#high[p]íwkén][n]
    #dictdefs[the #langeng people]
    #dictdefs[#langeng culture]

#dictentry[p#macr[i]wkénéth][#high[p]íwkénéɬ][n]
    #dictdef[the #langeng language]

//%%%%%%%%%%%%%%
//%   S s
//%%%%%%%%%%%%%%
#dictletter[S]

#dictentry[s#macr[a]h][#high[s]áh][n]
    #dictdef[fortune, good luck]

#dictentry[sìmaas][#high[s]im#longv[a]s][n]
    #dictdef[wife]

#dictentry[asìim#macr[a]][a#high[s]ii#high[m]á][v]
    #dictdef[they stay there]

#dictentry[#macr[a]sk#macr[o]he][ás#high[k]he][v]
    #dictdefs[they shout]
    #dictdefs[they shout it]

#dictentry[#macr[a]sumín][ásumi#high[n]][v]
    #dictdef[they step]

//%%%%%%%%%%%%%%
//%   T t
//%%%%%%%%%%%%%%
#dictletter[T]

#dictentry[#macr[a]twá][átwá][v]
    #dictdef[they eat it]

#dictentry[#macr[a]twáhi][átwáhi][v]
    #dictdef[eat in one bite]
    #usage[cannot be used to mean 'completely eat'.]

#dictentry[it#macr[a]a][i#high[t]#longv[á]][v]
    #dictdefs[it is two connected things]
    #dictdefs[they are a romantic couple]
    #usage[dyadic term describing two apparent individual entities forming one entity, e.g. bikini or walkie-talkie]

#dictentry[wt#macr[a]atìi][w#high[t]#longv[á]#high[t]#longv[i]][v]
    #dictdefs[they create a bonded pair of it]
    #dictdefs[they enter a romantic relationship]

#dictentry[it#macr[o]hì][i#high[t]#high[h]i][v]
    #dictdef[they are asleep]

#dictentry[wt#macr[o]hìh#macr[o]][w#high[t]#high[h]i#high[h]][v]
    #dictdef[they fall asleep]

#dictentry[#macr[i]tii][ít#longv[i]][v]
    #dictdef[they are sitting]

#dictentry[w#macr[o]tiit][#high[w]t#longv[i]t][v]
    #dictdef[sit down somewhere else, over there, etc.]

//%%%%%%%%%%%%%%
//%   U u
//%%%%%%%%%%%%%%
#dictletter[U]

#dictentry[unkís][unkís][n]
    #dictdef[frustration from others' decisions]

#dictentry[umùteèk][u#high[m]u#high[t]#longv[é]k][n]
    #dictdef[village]

#dictentry[#macr[a]ntu][ántu][v]
    #dictdef[they lead them]

#dictentry[#macr[a]ntut][ántut][v]
    #dictdefs[it is taught, demonstrated]
    #dictdefs[they teach it]
    #dictappend[#macr[a]ntutii][ántut#longv[i]]
        #dictdef[they teach it to them]
    #dictappend[sùntutkp#macr[i]i][#high[s]untutk#high[p]#longv[#high[i]]]
        #dictdef[school (lit. where things are taught)]

//%%%%%%%%%%%%%%
//%   W w
//%%%%%%%%%%%%%%
#dictletter[W]

#dictentry[#macr[i]wani][íwani][v]
    #dictdef[is is deep]

#dictentry[#macr[i]wákt][íwákt][v]
    #dictdefs[they know it]
    #dictdefs[they understand it]

#dictentry[w#macr[o]wanin][#high[w]wanin][v]
    #dictdef[it deepens]

#dictentry[wt][wt][n]
    #dictdef[hammer]

//%%%%%%%%%%%%%%
//%   X x
//%%%%%%%%%%%%%%
#dictletter[X]

#dictentry[íxii][íɬ#longv[i]][v]
    #dictdef[it is close enough to not warrant a strong distinction]

#dictentry[áxmee][áɬm#longv[e]][v]
    #dictdef[it returns, they return]

#dictentry[w#macr[o]xmeem][#high[w]ɬm#longv[e]m][v]
    #dictdefs[it wraps around it, it encircles it]
    #dictdefs[they walk around it, they travel around it]

//%%%%%%%%%%%%%%
//%   Y y
//%%%%%%%%%%%%%%
#dictletter[Y]

#dictentry[ay#macr[o]pi][a#high[j]pi][v]
    #dictdef[they go on foot]

#dictentry[ay#macr[o]pitìx][a#high[j]pi#high[t]ix][v]
    #dictdef[they reach it on foot]

total word count: #dictwordcount.display()