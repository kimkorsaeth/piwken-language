#import "leipzig-gloss.typ": *

#set page(paper: "us-trade")
#set text(font: "Cambria", size: 9pt)

#let bind(body)= [\u{361}] + body
#let bold(body)= [*#body*]
#let high(body)= body + [\u{301}]
#let longv(body)= body + [\u{2d0}]
#let macr(body)= body + [\u{304}]
#let lang= [P#macr[i]wkén]
#let langeng= [Paywakin]

/*
    Glosses
*/

+ #gloss(
    header_text: [nín#macr[o]n im#macr[o]keena.\ [nə̀ínə́n ìmə́gè#bind[ɛ̀]nà]],
    source_text: ([nín#macr[o]n],[i-],[m#macr[o]kee],[-na]),
    morphemes: ([sun:#smallcaps[abs]],[#smallcaps[fact-]],[bright],[#smallcaps[-inan]]),
    translation: [The sun shines.]
)

+ #gloss(
    header_text: [ikàatàhi #macr[a]sk#macr[o]he.],
    source_text: ([i-],[kàa],[-tà],[-hi],[#macr[a]-],[sk#macr[o]he]),
    morphemes: ([#smallcaps[fact-]],[person],[#smallcaps[-pl]],[#smallcaps[-der]],[#smallcaps[act-]],[shout]),
    translation: [All the people shouted.]
)

+ #gloss(
    header_text: [umùteèk asìim#macr[a]ptík yà ay#macr[o]pitìxik.],
    source_text: ([umùteèk],[a-],[sìim#macr[a]pt],[-#macr[i]k],[yà],[a-],[y#macr[o]pitìx],[-#macr[i]k]),
    morphemes: ([village],[#smallcaps[act-]],[stay\_a\_while],[#smallcaps[-dp]],[#smallcaps[1p]],[#smallcaps[act-]],[reach\_on\_foot],[#smallcaps[-dp]]),
    translation: [We went to the village for a visit.]
)