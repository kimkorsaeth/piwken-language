#set page(columns: 2, paper: "us-trade")
#set text(font: "Cambria", size: 9pt)
#set block(spacing: 0.65em)

#let dictwordcount= counter("dictwordcount")
#dictwordcount.update(1)
#let defcount= counter("defcount")

#let bind(body)= [\u{361}] + body
#let bold(body)= [*#body*]
#let high(body)= body + [\u{301}]
#let longv(body)= body + [\u{2d0}]
#let macr(body)= body + [\u{304}]
#let lang= [P#macr[i]wkén]
#let langeng= [Paywakin]

#let dictletter(it) = heading(numbering: none, outlined: false, it)
#let dictentry(term, ipa, pos) = dictwordcount.step()+text(weight: "bold", size: 11pt, [#term ])+[/#ipa/]+emph[ #pos.]+defcount.update(1)
#let dictappend(term, ipa) = dictwordcount.step()+text(weight: "bold", [ #sym.dot.c #term ])+[/#ipa/]
#let dictdef(text) = text
#let dictdefs(text) = bold[#defcount.display() ] + text + defcount.step()
#let dictexample(quote, translation) = [\`#quote''] + emph(translation)

//%%%%%%%%%%%%%%
//%   A a
//%%%%%%%%%%%%%%
#dictletter[A]

#dictentry[#macr[a]twe][átwe][v]
    #dictdefs[go]
    #dictdefs[(machinery) run, operate]
    #dictdefs[(music player) play]
    #dictappend([y#macr[a]twe], [#high[j]átwe])
        #dictdef[(stationary machinery) function, be in service]

#dictentry[wàtwewe][#high[w]atwewe][v]
    #dictdefs[set off]
    #dictdefs[start a race]


//%%%%%%%%%%%%%%
//%   E e
//%%%%%%%%%%%%%%
#dictletter[E]



//%%%%%%%%%%%%%%
//%   H h
//%%%%%%%%%%%%%%
#dictletter[H]

#dictentry[#macr[i]háahuu][íh#longv[á]h#longv[u]][v]
    #dictdef[asleep, sleeping]

#dictentry[w#macr[o]háahuuhu][#high[w]h#longv[á]h#longv[u]hu][v]
    #dictdef[fall asleep]

#dictentry[ah#macr[e]pas][a#high[h]épas][v]
    #dictdef[bend, usually non-destructively]

#dictentry[wh#macr[e]pasa][w#high[h]épasa][v]
    #dictdef[yield, buckle, snap, break by bending]

#dictentry[héx][héɬ][n]
    #dictdefs[language]
    #dictdefs[speech, utterance]

#dictentry[#macr[a]héx][áhéɬ][v]
    #dictdef[speak, talk]

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

#dictentry[wk#macr[u]t][w#high[k]út][v]
    #dictdef[notice, sense]

#dictentry[wk#macr[u]tú][w#high[k]útú][v]
    #dictdef[about to notice]

//%%%%%%%%%%%%%%
//%   M m
//%%%%%%%%%%%%%%
#dictletter[M]

#dictentry[méemìkà][m#longv[#macr[e]]#high[m]i#high[k]a][n]
    #dictdef[sheep]

//%%%%%%%%%%%%%%
//%   N n
//%%%%%%%%%%%%%%
#dictletter[N]

#dictentry[#macr[i]néw][ínéw][v]
    #dictdef[is what]

#dictentry[w#macr[o]néwé][#high[w]néwé][v]
    #dictdef[where to]

#dictentry[nín#macr[o]n][ní#high[n]n][n]
    #dictdef[the sun]

//%%%%%%%%%%%%%%
//%   P p
//%%%%%%%%%%%%%%
#dictletter[P]

#dictentry[#macr[i]pa][ípa][v]
    #dictdef[is large]

#dictentry[w#macr[o]pap][#high[w]pap][v]
    #dictdef[grow, become large]

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

//%%%%%%%%%%%%%%
//%   T t
//%%%%%%%%%%%%%%
#dictletter[T]

#dictentry[#macr[a]tawá][átawá][v]
    #dictdef[eat]

#dictentry[it#macr[a]a][i#high[t]#longv[á]][v]
    #dictdef[is two, is a connected pair but seen as one whole thing]

#dictentry[wt#macr[a]at#macr[a]][w#high[t]#longv[á]#high[t]á][v]
    #dictdef[share between two, connect two entities via this one thing]

#dictentry[#macr[i]tii][ít#longv[i]][v]
    #dictdef[be sitting, be sat down]

#dictentry[w#macr[o]tiiti][#high[w]t#longv[i]ti][v]
    #dictdef[sit down, particulary nearby]
    #dictappend[y#macr[u]tiiti][#high[j]út#longv[i]ti]
        #dictdef[sit down somewhere else, over there, etc.]

//%%%%%%%%%%%%%%
//%   U u
//%%%%%%%%%%%%%%
#dictletter[U]

#dictentry[uníksi][uníksi][n]
    #dictdef[frustration from others' decisions]


//%%%%%%%%%%%%%%
//%   W w
//%%%%%%%%%%%%%%
#dictletter[W]

#dictentry[#macr[i]wani][íwani][v]
    #dictdef[is deep]

#dictentry[w#macr[o]wanin][#high[w]wanin][v]
    #dictdef[deepen, become deep(er)]

#dictentry[wt][wt][n]
    #dictdef[hammer]

//%%%%%%%%%%%%%%
//%   X x
//%%%%%%%%%%%%%%
#dictletter[X]

#dictentry[íxii][íɬ#longv[i]][v]
    #dictdef[close enough to not warrant a strong distinction]

#dictentry[áxmee][áɬm#longv[e]][v]
    #dictdef[return]

#dictentry[w#macr[o]xmeeme][#high[w]ɬm#longv[e]me][v]
    #dictdef[go around, encircle]

//%%%%%%%%%%%%%%
//%   Y y
//%%%%%%%%%%%%%%
#dictletter[Y]



total word count: #dictwordcount.update(n => n - 1) #dictwordcount.display()