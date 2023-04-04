// Config

#set page(paper: "us-trade", numbering: none)
#set text(font: "Cambria", size: 9pt)
#set heading(numbering: none)
#set par(justify: true)
#show figure: set align(center)


// Macros

#let bind(body)= [\u{361}] + body
#let bold(body)= [*#body*]
#let high(body)= body + [\u{301}]
#let longv(body)= body + [\u{2d0}]
#let macr(body)= body + [\u{304}]
#let lang= [P#macr[i]wkén]
#let langfull= [P#macr[i]wkénéx]
#let langeng= [Paywakin]
#let people= [P#macr[i]wkénkàa]
#let listabbrev(term, body)= [/ #smallcaps(term): #body]

// Title page

#set document(title: "Paywakin", author: "Kim Korsæth")

#align(center + horizon, 
  [
    #image("finger.png")
    #text(size: 60pt, [#langfull]) \ 
    #text(size: 24pt, [the #langeng language]) \ 
    #block(height: 10pt) 
    Kim Korsæth \ April 2023]
)
#pagebreak()

// Document

#set page(numbering: "i")
//#counter(page).update(1)


= Preface

THIS IS A WORK IN PROGRESS. Some sections may lack a lot of detail or be worded very poorly. I'm not good at translating my thoughts and ideas into words, and while I'm constantly refining and expanding the whole grammar, it'll be at my own (considerably slower) pace. I ask that you reserve some judgement until I can call this done, and hope that you can enjoy and get excited by what is here so far.

#langeng is a constructed language, and the surrounding culture that I describe throughout this document is entirely fictional. I'm creating this language with autistic neurotypes in mind, not for the purpose of designing a more suitable form of communication for autistics, but to design certain elements in a way that corresponds to how autistic minds tend to operate in contrast to nonautistic ones. For me, this has several purposes: 

+ Give myself a challenge by assuming no established or conventional explanation for how the language works, forcing me to document things to a greater extent than I've usually had to
+ Highlight the profound differences between autistic and non-autistic lives, world views, and communication to bring more awareness
+ Celebrate these differences that make me and other autistics who we are

I hope that I'm able to achieve all three of these. 

I find that a lot of conlangers focus a lot on phonology, morphology, and syntax because we have more rigorous frameworks for these areas of linguistics, and it's where it's easiest to see "language" happening, which I'm sure fuels the desire to focus on these in conlanging. They're also the first areas you document a new language, which means that one might find this kind of "front-loading" in many grammars. You'll see that conlangs often tend more towards the synthetic end of the spectrum, and those who go down the isolating route will focus more on syntax and forgo semantics and pragmatics, instead having them follow the natural intuitions of each given speaker's native language. You'll hear many languages, both constructed and natural, being described as having "no grammar" because they don't have many morphological features, like Mandarin Chinese.

Semantics is a difficult field to enter into and understand, given that "meaning" is a nebulous concept that changes from language to language, making it exceedingly difficult to ascertain any sort of cross-linguistic framework. Learning how to methodically approach semantics is also a giant hurdle, much more so than learning how ergative alignment or lexical aspect works, and with all of these caveats it's clear why conlangers usually don't put much effort into this side of grammar. 

With #langeng, I want to explore the non-syntactic, non-phonological sides of constructing a language. The end result, I hope, will be one that covers what #langeng to a much greater extent than if I had never challenged myself. This stance might sound a little braggy, and I don't disagree.

This grammar is written from an in-world perspective, citing names, places, and events that don't exist in real life. It all serves as part of the narrative.

#pagebreak()
#set page(columns: 2)
= Abbreviatons

#listabbrev[\*][unattested, ungrammatical, or unacceptable]
#listabbrev[?][grammatical but infelicitous]
#listabbrev[act][actual aspect]
#listabbrev[ani][animate]
#listabbrev[C][consonant]
#listabbrev[caus][causative case]
#listabbrev[cl][cislocative motion]
#listabbrev[der][derivational morpheme]
#listabbrev[dp][discourse participant]
#listabbrev[erg][ergative case]
#listabbrev[fact][factual aspect]
#listabbrev[ina][inanimate]
#listabbrev[ins][instant aspect]
#listabbrev[instr][instrumental]
#listabbrev[nact][nonactual aspect]
#listabbrev[neg][negative]
#listabbrev[o, obj][object]
#listabbrev[p, pl][plural number]
#listabbrev[pct][punctual]
#listabbrev[redup][reduplication]
#listabbrev[s, sg][singular number]
#listabbrev[stim][stimulative case]
#listabbrev[tl][translocative motion]
#listabbrev[V][vowel]

#set page(columns: 1)

#pagebreak()
#set heading(numbering: "1.1")
#outline(
  indent: true, 
  fill: line(length: 100%, stroke: 0.5pt)
)

#pagebreak()

#set page(numbering: "1")
//#counter(page).update(1)

= The #langeng People

The #langeng people of central Canada have many hundreds of years of history in the area. Nowadays, they're mostly found on the #langeng reserve on the border of Lake Winnipeg. While there are about 3800 native #langeng living in and around the reserve, only about 150 of them still speak their native language, all above the age of 50, and almost none of them are monolingual speakers. It's estimated that if no action is taken to preserve the language, it may become extinct within the next 40 years. This grammar and its accompanying dictionary has been developed in cooperation with the #langeng Council as the basis for developing learning material and other media to revitalize the language. With more children being immersed from an early age and taught the importance of preserving their culture, the [name of people] hope to see their language survive for many generations yet.

= Prior research

In large parts, this grammar seeks to replace the 1641 grammar titled "Grammaire de Péouguienne", written by the French missionary [obnoxiously french name] who in large parts failed to describe the language with any accuracy or due care. The work serves no useful purpose as an established framework, and will only be mentioned here for posterity.

= Phonology <phonology>

#langeng has a fairly small inventory of sounds, some of which may prove difficult for non-native speakers to pronounce accurately. The consonant /ɬ/ is rarely found as a phonemic sound in the languages of the world and is often the last sound that new speakers master. It's not uncommon to hear speakers replace it with [ʃ], but native speakers will frequently correct this as it could cause confusion with /s/, which often has an acoustically similar "recessed" pronunciation [s\u{331}]. Many of the vowel sounds and sequences like [i#bind[ɪ]]/[ɪ#bind[e]]/[e#bind[ɛ]] could also be challenging for beginners to produce and/or distinguish.

== Consonants <consonants>

#figure(
  [
    #table(
      columns: 6,
      align: (col,row) =>
        if col == 0 {left}
        else {center},
      stroke: none,
      fill: (col,row) =>
        if col > 0 and row > 0 {luma(230)}
        else {none},
      [],[Labial],[Alveolar],[Palatal],[Velar],[Glottal],
      [Plosive],[p],[t],[],[k],[],
      [Fricative],[],[s],[],[],[h],
      [Lateral fricative],[],[ɬ],[],[],[],
      [Nasal],[m],[n],[],[],[],
      [Approximant],[],[],[j],[w],[]
    )  
  ],
caption: [Phonemic consonant inventory]
)

// ɡ unicameral g here

#langeng distinguishes 10 consonant phonemes, giving it one of the world's smallest consonant inventories. There is no phonemic voicing or modal distinction. Although the language lacks [f], [v], [l], [ɹ], [ʃ], and [t#bind[ʃ]], speakers may still use these sounds in loanwords that haven't yet been naturalized. 

=== Plosives

The plosive set contains /p/, /t/, and /k/. All three plosives are voiceless and unaspirated, similar to plosives following fricatives in English. Speakers note that while aspiration isn't contrastive, it sounds wrong and should be avoided. /p/ is a bilabial plosive. Intervocalically it's realized as a voiced plosive [b], and at the end of words it becomes a glottal stop [ʔ]. /t/ is an apical alveolar plosive, pronounced with the tip of the tongue touching the alveolar ridge. Intervocalically it's realized as a voiced plosive [d]. /k/ is a velar plosive. Intervocalically it's realized as a voiced plosive [ɡ], and at the end of words it becomes a velar fricative [x]. Like velars in other languages, it has fairly weak articulation, and it's not uncommon to hear it softened to [ɣ] intervocalically or [h] word-finally.

// put a list of some minimal pairs or sth here eventually

=== Fricatives

The fricative sets contain /s/, /h/, and /ɬ/. Like in the plosives, there is no voicing or modal distinction. While /h/ differs from the other two in place of articulation, /s/ and /ɬ/ are distinguished by their method of articulation. /s/ is an apical alveolar fricative, pronounced by having air flow between the tip of the tongue and the alveolar ridge. The actual phonetic realization is often retracted compared to prototypical alveolar fricatives, but never as far back as [ʃ]. Intervocalically it becomes a voiced fricative [z], and at the start of words becomes an affricate [t#bind[s]]. /h/ is a glottal fricative. At the start of words it becomes a glottal stop [ʔ]. /ɬ/ is an lateral alveolar fricative, pronounced by having air flow on the sides of the tongue, not the middle as with /s/. At the start of words it becomes an affricate [t#bind[ɬ]]. Before /i/ and /#longv[i]/ it's pronounced as a dental fricative [θ], or as a palatal fricative [ç] if also preceded by /k/.

// put a list of some minimal pairs or sth here eventually

=== Nasals

The nasal set contains /m/ and /n/. Both are voiced nasal continuants. /m/ is a bilabial nasal. It is always pronounced as [m] and does not assimilate with adjacent consonants' place of articulation. /n/ is an alveolar nasal. It is prototypically pronounced as an apical alveolar nasal [n], but will assimilate in place of articulation with consonants that follow it (except /h/). This means that outside of deliberate pronunciation, the distinction between /m/ and /n/ is lost before /p/ and /m/.

// put a list of some minimal pairs or sth here eventually

=== Approximants

The approximant set contains /j/ and /w/. /j/ is a palatal approximant, with a fricated realization [ʝ\u{31E}] that is noticably more "tense"-sounding to English speakers. /w/ is a labiovelar approximant, and much like /j/ is realized as a more "tense" [ɣʷ].

// put a list of some minimal pairs or sth here eventually

== Vowels <vowels>

#figure(
  [
    #table(
      columns: 4,
      align: (col,row) =>
        if col == 0 {left}
        else {center},
      stroke: none,
      fill: (col,row) =>
        if col > 0 and row > 0 {luma(230)}
        else {none},
      [],[Front],[Central],[Back],
      [High],[i, #longv[i]],[],[u, #longv[u]],
      [Mid],[e, #longv[e]],[(ə)],[],
      [Low],[],[a, #longv[a]],[],
    )  
  ],
caption: [Phonemic vowel inventory]
)

#langeng has 8 phonemic vowels; 4 short and 4 long. This is a comparably large vowel inventory, especially when they nearly outnumber the consonants. 

=== Short vowels <shortvowels>

The short vowels form a somewhat typical 4-vowel system, with the high vowels /i/ and /u/, the low vowel /a/, and the front mid vowel /e/. It lacks /o/, and instead /u/ can have various realizations ranging from [u] to [ɔ] depending on the environment.

=== Long vowels <longvowels>

The long vowels follow the same 4-vowel pattern as the short vowels. While #langeng is described as having a length distinction in the vowels, the long vowels are in fact phonetically diphthongs.

/#longv[i]/ represents the diphthong [i#bind[ɪ]].

=== Epenthetic vowels <vowelepenthesis>

In certain environments, epenthetic vowels will be inserted to facilitate pronunciation. This section focuses on the phonetic realization of these epenthetic vowels, for information on behavior see @epentheticinsertion. These vowels are not considered phonemic as they are not contrastive; no distinctions in meaning depend on their presence or absence.

All epenthetic vowels are interpreted as underlyingly being the true central vowel [ə] with the allophones [ə ɪ ʏ ɵ] depending on the preceding and following segments. 

- [ɪ] appears after /j/ and before /e/, except in /ji/ [jəi]
- [ʏ] appears in the sequence /we/ [ɥʏe]
- [ɵ] appears after /w/ and before /u/
- in all other environments, it is realized as [ə]

== Tone <tone>

On its surface, the tonal system of #lang appears very complex. A total of 8 contours and register tones makes it one of the larger tone inventories in the world, and substantial tonal alternation triggered by countless things complicates things even further. 

However, the true tonal system is a much simpler two-level system on the abstract level, which through phonotactics creates phonetic tone patterns

#figure(
  [
    #table(
      columns: (auto,15%,15%,auto,auto),
      align: left + bottom,
      stroke: none,
      fill: (col,row) =>
        if row == 5 {none} 
        else if row > 0 {luma(230)}
        else {none},
      [Tone name],[Phonemic pattern],[Phonetic realization],[Diacritic],[Example],
      [Low],[C1, V1, C1V1],[11],[a],[],
      [High],[],[55],[#macr[a]],[],
      [Rising],[],[15],[á],[],
      [Falling],[],[51],[à],[],
      [],[],[],[],[],
      [Low-rising],[],[113],[aá],[],
      [High-falling],[],[553],[aà],[],
      [Low-bump],[],[142],[áà],[],
      [High-dip],[],[524],[àá],[],
    )  
  ],
caption: [Tonal system of #lang]
)

== Phonotactics <phonotactics>

+ abstract level - sequence of consonants, vowels, and tones
+ concrete level - resolution of syllabicity conflicts, then tone merging
+ phonetic level - intervocalic voicing, initial and final mutations, etc.

/hikúak/ → [həikɵúak] → [ʔəigɵúax] \
/m#longv[é]#high[m]ih#high[k]a/ → [m#longv[é]#high[m]ihk#high[ə]a] → [m#longv[ě]m#high[ə]ihkə́a]

insert epenthetic vowel between consonant-consonant and consonant-short vowel

s ɬ h → t#bind[s] t#bind[ɬ] ʔ / \%\_ \
p t k s → b d ɡ z / [+voice]\_[+voice] \
k → x / \_\% \
in V#sub[1]V#sub[2], last vowel lost and V#sub[1] remains \
wordfinal consonants generate no epenthetic vowel except if high tone \
no epenthetic vowel in h{p,t,k} clusters

=== Abstract level <abstractlevel>

In the abstract level, sequences of consonants, vowels and tones make up words. This is where actual phonemic elements of formatives and the tonal system operate.

=== Concrete level <concretelevel>

The concrete level takes the sequences from the abstract level and makes them pronouncable.

==== Epenthetic vowel insertion <epentheticinsertion>

Because tone can only be carried by continuants, epenthetic vowels appear in certain places.

rules for epenthetic vowel insertion
+ consonants except /m n/ cannot carry tone and instead create floating tones
+ short vowels cannot accept any tone than their own
+ long vowels can carry their own tone and adopt floating tones both forward and back
+ any remaining floating tones are offloaded onto epenthetic vowels following consonants

==== Tone merging

The two-level tone system spanning across both consonants and vowels must shift its tones over to continuants to be pronouncable. 

=== Phonetic level

The phonetic level contains all the sound changes that come from relaxed pronunciation and generally 

== Orthography

y = j, x = ɬ, o = ə if needed, otherwise 1:1

The current orthography was devised in collaboration with the teachers of [school], the only elementary school on the #langeng reserve. Previously, speakers had no standard writing system, and different communities would use conflicting spelling systems, and the current orthography was created to promote unity within the #langeng people and facilitate learning.


#figure(
  [
    #table(
      columns: 2,
      align: (col,row) =>
        if col == 0 {left}
        else {center},
      stroke: none,
      fill: (col,row) =>
        if col > 0 {luma(230)}
        else {none},
      [*A a*],    [/a/],
      [*Aa aa*],  [/#longv[a]/],
      [*E e*],    [/e/],
      [*Ee ee*],  [/#longv[e]/],
      [*H h*],    [/h/],
      [*I i*],    [/i/],
      [*Ii ii*],  [/#longv[i]/],
      [*K k*],    [/k/],
      [*M m*],    [/m/],
      [*N n*],    [/n/],
      [*O o*],    [[ə]],
      [*P p*],    [/p/],
      [*S s*],    [/s/],
      [*T t*],    [/t/],
      [*U u*],    [/u/],
      [*Uu uu*],  [/#longv[u]/],
      [*W w*],    [/w/],
      [*X x*],    [/ɬ/],
      [*Y y*],    [/j/]
    ) 
  ],
  caption: [#langeng orthography]
)

=== Teaching orthography

// needs context
// who created it and when


The main differences include:
- spell [b d g z] as *b d g z* respectively
- spell [ts tɬ ʔ x] as *ts tx ' ch* respectively
- always include epenthetic vowels in spelling
- use tone diacritics that correspond with the abstract tones // but what kind of accent 

#figure(
  [
    #table(
      columns: 3,
      align: left,
      stroke: none,
      fill: (col,row) =>
        if row > 0 and col > 0 {luma(230)} 
        else {none},
      [English], [Standard],   [Teaching],
      [-], [-], [-],
      [-], [-], [-],
      [-], [-], [-],
      [-], [-], [-]
    )  
  ],
caption: [Examples in the Standard and Teaching writing systems]
)

= Verbs

== Verb classes

Verbs are divided into five categories depending on their semantic content. This has some semantic and syntactic repercussions expand on this later

=== #smallcaps[move] class <moveclass>

Verbs in the #smallcaps[move] class describe some kind of physical movement from one place or orientation to another, either of one's own power or by means of an external volitive or natural force. 

==== Cislocative and translocative motion <cistrans>

#smallcaps[move] verbs usually denote movements that start in one place or orientation and end in another. Actions that start and end in the same place are marked with a different set of preverbal affixes.

#figure(
  [
    #table(
      columns: 3,
      align: (col,row) =>
        if col == 0 {left}
        else {center},
      stroke: none,
      fill: (col,row) =>
        if row > 0 and col > 0 {luma(230)} 
        else {none},
      [Aspect],[Translocative],[Cislocative],
      [Factual],[i-],[ii-],
      [Actual],[a-],[ya-],
      [Instant],[w-],[yu-]
    )  
  ],
caption: [Cis- and translocative preverbal affixes]
)



=== #smallcaps[give] class <giveclass>

The #smallcaps[give] class is the smallest of the verb classes, and only contains verbs describing any handing over or taking away of objects by an agent unto a recipient. 

=== #smallcaps[change] class <changeclass>

Verbs in the #smallcaps[change] class describe some kind of physical alteration of an entity. This involves compositional, deformational, or aesthetic changes, which can be either momentary or lasting. Prototypical #smallcaps[change]-type verbs involve either one entity retaining its physical composition but is deformed into another shape (e.g. breaking or bending a stick) or one entity transforming into something else as a whole (e.g. water freezing into ice).

=== #smallcaps[feel] class <feelclass>

Verbs in the #smallcaps[feel] class describe actions or events with no clear physical force imparted on someone or something. This includes sensory impressions, feelings, thoughts, talking, facial expressions and other displays of emotion, and so on.

=== #smallcaps[exist] class

Verbs in the #smallcaps[exist] class are stative verbs describing states of being, qualities, and characterics. All verb phrases based on nominal stems belong in the #smallcaps[exist] class.

== Preverbal affixes

#figure(
  [
    #table(
      columns: 2,
      align: (col,row) =>
        if col == 0 {left}
        else {center},
      stroke: none,
      fill: (col,row) =>
        if col > 0 {luma(230)}
        else {none},
      [Nonactual],  [s-],
      [Factual],    [i-, ii-],
      [Actual],     [a-, ya-],
      [Instant],    [w-, yu-],
      [Negative],   [hùúy-],
      [Jussive],    [we-]
    )  
  ],
caption: [Preverbal affixes]
)

Apart from the negative prefix, these affixes do not have tone on their own and instead gain tone from interacting with the root. They dissimilate from the first tone of the root, becoming the opposite tone, unless something something at which point they assimilate and become the same, figure that one out at some point.

The preverbs #emph[ii-], #emph[ya-], and #emph[yu-] only appear on verbs in the #smallcaps[move] class to mark cislocative motion (see @cistrans).

=== Nonactual preverb

weird, it's verbal noun and subjunctive in one thing, anything non-finite

=== Factual preverb

is [something] or has done [action]

essentially describes a state at deictic center 

=== Actual preverb

does [action] 

=== Instant preverb

does [action] but punctual, 

=== Negative preverb

isn't or doesn't, p simple

=== Jussive preverb

urging, pressuring, encouraging, commanding, essentially imperative but also covering weaker forms of compelling

== Verb stem

=== Punctual stems

Instantaneous events or actions

=== Durative stems

Lasting events or actions

=== Stative stems

States, qualities, I can't believe it's not copula

=== Inchoative stems

Start of durative event, is punctual itself (as a transition)

=== Frequentative stems

Repetitive action

=== Reduplication

==== Rightward reduplication

Rightward reduplication involves copying some part of the root onto the end of the root, and can take several different forms depending on the root's final syllable or syllables, shown in the table below.

\begin{table}[ht]
    \centering
    \begin{tabular}{lll}
        \toprule
        Root ending & Reduplicated & Example \\
        \midrule
        ...CV & ...CVC(V)& -pap `become large, grow' (< -pa `be large') \\
              &         & -wanin `deepen, sink' (< -wani `be deep') \\
              &         & -hahuhu `fall asleep' (< -hahu `sleep') \\
        ...(C)VC & ...(C)VCV  & -kutu `about to notice' (< -kut `notice') \\
              &         & -hepasa `yield, buckle' (< -hepas `bend') \\
              &         & -newe `where to' (< -new `what') \\
        ...CV\tsub{1}V\tsub{2} & ...CV\tsub{1}V\tsub{2}CV\tsub{2} & -tiidi `sit down' (< -tii `sit, be sitting') \\
              &         & -taata `split in two' (< -taa `two, a pair') \\
              &         & -thameeme `go around' (< -thamee `return') \\
        ...VCCV & ...VCCVCV & -atwewe `set off' (< -atwe `go') \\
              &         & -untutu `demonstrate' (< -untu `lead') \\
        \bottomrule
    \end{tabular}
    \caption{Rightward reduplication patterns in \lang}
\end{table}

All the different patterns have in common that they only add one mora to the stem. The simplest process is for light monosyllables, where they take a duplicate of the onset consonant as a coda, or duplicate the entire last syllable if that onset is /h/. On closed syllables, the nucleus and coda are duplicate to form another syllable with the same coda. On long vowel syllables, the first mora of the syllable is duplicated. On multisyllabic roots ending in a light syllable preceded by a heavy syllable, the entire last syllable is reduplicated.

All stems formed by rightward reduplication fall into the category of inchoative stems, as they all describe some form of transition into a new state or action. On stative stems it marks meanings akin to `become X' or `turn into X', on durative stems it marks a meaning akin to `start to X', while on stems describing punctual events it suggests imminent action akin to `about to X'. The resulting inchoative stems usually end up punctual in nature, taking the punctual preverb. Many inchoative stems are no longer productive and have taken on meanings that aren't interchangeable with their equivalent underived stems; a couple examples can be seen in the above table.

The exact lexical changes can vary. Some stems simply describe the initiaton of an activity: -kiiki `start to write' (< -kii `write'), -nuipapa `start to perform' (< -nuipa `perform a song/dance'), -tawawa `start to eat' (< -tawa `eat'), -apasas `set off on foot' (< -apas `travel far on foot, trek'). Other stems indicate imminent action: -kutut `about to notice' (< -kut `notice'), -matat `about to shriek' (< -mat `shriek'), -sayai `about to play with' (< -sai `play with'). These stems usually come from punctual actions, but some durative actions can take on a sense closer to this than the simple inchoative.

Others again have more complex relations. -hepasas `bend, yield, give out' implies a permanent or lasting change to the shape of a rigid object, while the original stem -hepas `bend' can be used for any non-permanent or reversible bending of a rigid or jointed object. -thameeme `go around, revolve around' has an adjacent meaning to -thamee `return'; it's understood to come from having been used in the sense of marking the point where a round trip turns back towards the starting location, akin to a thrown object reaching the apex of its arch.

==== Full reduplication

Full reduplication of the root forms a frequentative stem. This involves duplicating the entire root with a ligature vowel if necessary to be phonotactically valid. On durative stems it marks that the action is either repeated or lengthened. No distinction is made between starting a task several times or continuing one task.

% example here

In contrast, on punctual actions it marks only repetition. 

% example here

Reduplicated stative stems translate to something like `just X, simply X' or in some cases `barely X'. In almost all cases, whatever is marked undershoots expectations in some way, to the surprise or relief of the relevant party, rarely disappointment.

% example here

This can also be used for affection or adoration towards someone or something.


== Locomotive stem

Add a verb or noun stem that marks a location or motion of the main action, and also potentially imperfective meaning

+ you.ABS JUS-sit\_down+go-DP "go sit somewhere else"
+ PCT-fall\_asleep+ceremony-DP "I fell asleep during the ceremony"
+ peppers.ABS they.ERG ACT-deseed+sit "they're sitting and deseeding peppers"

== -Y suffix

It does a lot of things but hold on

== Person marking

Two formatives, one marks inanimate third person, the other discourse participant

-ik 1/2 person \
-a inanimate

= Nominals

== Case

=== Absolutive case

null suffix

Least agentive argument takes absolutive always.

Intransitive verbs take absolutive because the sole argument is the least agentive argument.

=== Ergative case

? suffix

marks the agent of transitive verbs where the action/change described can only come about as a result of someone's action. e.g. something can't be chewed by any other means than someone doing it, making the agent inherent to the action, and so the agent of the verb 'chew' takes the ergative case. 

=== Causative case

marks the agent of transitive verbs where the action/change described can happen through various means, not just through deliberate action. e.g. something can fall apart on its own, or by inanimate forces of nature, but a volitive agent can come around and take it apart deliberately. Similarly, something can heat up on its own, or through external forces both volitive and non-volitive. As such, "take apart" and "warm up(caus.)" would take a causative agent

=== Stimulative case

The case 4 marks the Stimulus role of #smallcaps[feel] verbs related to senses and emotions. 

I.ABS flower.STIM smell

== Number

singular, plural. singulative?

== Pronouns

=== Personal pronouns

== Definite determines 

before NP means "this", after NP means "that"

== Discourse determiners

The discourse determiners mark things based on their relevance to the current topic of discussion. these can modify any part of speech with semantic content or act as a particle/attach to a conjunction (decide between these, not having conjunctions makes it easy) to modify the entire clause.

=== asa - Previously mentioned topic

The determiner #emph[asa] marks something that has already been established in dialog between the speaker and listener. Pragmatically, this can have several different purposes. as I mentioned, as you know, like I said, you know the one, apropos, going back to, etc.

=== k#macr[o]sa - imminent new topic

The determiner #emph[k#macr[o]sa] marks something that hasn't yet been brought up or expanded upon in dialog with the listener, but intends to do so very soon. we'll get back to that, more on that later, etc.

This topic is always related to something mentioned already, but perhaps only in passing, or the information that is gonna be shared hasn't been brought up yet.

=== k#macr[o]sih - new, unrelated topic

The determiner #emph[k#macr[o]sih] marks non-sequitors, complete shifts in conversational topic. 

= Syntax

== Parataxis

== The marked argument - Subject

Always one marked argument. The marked argument is what the utterance is about, and once pragmatically established can be omitted from subsequent utterances. 

Intransitive verbs: one argument, it's automatically the marked argument

Transitive verbs: two arguments, least agentive argument P (patient) is the marked argument. -y on the verb switches this and makes most agentive argument A (agent) the marked argument

Ditransitive verbs: three arguments, least agentive argument T (theme) is the marked argument. -y on the verb switches this and makes more agentive argument R (recipient) the marked argument

Only the marked argument can do certain things?'

== Associative participant

Any verb that involves other participants that aren't within the scope of the agentive argument must introduce them as a third argument. Actions can include playing sports, large-scale construction, singing in a group, etc etc etc. A recurring theme is that each participant isn't doing a parallel task like e.g. watching a movie, they are contributing in different ways to a common goal.

Whether or not a verb can take the comitative argument is a lexical distinction. e.g. playing solitaire would not take this argument while playing football would, building a bench probably wouldn't but building a house definitely would. This can also be used semi-productively with actions that wouldn't necessarily involve other participants to mark that an action uncharacteristically requires several people to achieve due to scope or difficulty.

== Volitive Experiencer

In verb phrases with a #smallcaps[feel] verb involving senses and emotions, the Experiencer is almost always involitive and the sensory or emotional stimulus affects them without any initiative. However, if the Experiences is actively seeking the stimulus (e.g. looking for something, sniffing around, listening for a sound, pondering something, trying to cry etc.), the Experiencer must be doubly referred as both absolutive and causative. stimulus still dative and nonoptional.

== Simple clauses

= Dictionary

//#include "dictionary.typ"