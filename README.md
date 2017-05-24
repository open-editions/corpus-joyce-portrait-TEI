# The Open Scholarly Edition of James Joyce’s _A Portrait of the Artist as a Young Man_

[![DOI](https://zenodo.org/badge/35376693.svg)](https://zenodo.org/badge/latestdoi/35376693)

[![Join the chat at https://gitter.im/corpus-joyce-portrait-TEI/Lobby](https://badges.gitter.im/corpus-joyce-portrait-TEI/Lobby.svg)](https://gitter.im/corpus-joyce-portrait-TEI/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)


This is the open scholarly edition of James Joyce's novel _A Portrait of the Artist as a Young Man_, richly annotated in semantic markup with TEI XML. 

See a short presentation about it [here](http://jonreeve.com/presentations/portrait-xml/), and test a XSL-transformed prototype, containing a few of the text’s features, [here on github.io](http://jonathanreeve.github.io/corpus-joyce-portrait-TEI/). The transformed prototype is not meant to be a canonical representation of the features of the edition—the main text of the edition is [portrait.xml](https://github.com/JonathanReeve/corpus-joyce-portrait-TEI/blob/gh-pages/portrait.xml) in this repository.

# About this Project

We intend to aggregate much of the existing knowledge about the book in a single file--textual notes, critical commentary, interpretations, and more. We want to be able to answer questions such as these:
 * What proportion of each chapter is a song or a verse stanza? What does this tell us about Joyce's associations of song and youth? 
 * What proportion of the novel is prayer? What books of the bible are cited or quoted most often, and why?
 * What are the most common types of literary allusions in the novel? What patterns might emerge from a study of these? 
 * How much of the Latin language may be found in each chapter, and why? How much French?
 * Which character speaks the most lines of dialog? What are the characteristic words of each speaker? 
 - How many of the portmanteau or compound words in this novel are Joyce’s coinages? What trends may be found among categories of these words?

These questions are easily answerable with very simple computational analyses, but these analyses need a machine-readable edition of the novel. This is possible with TEI XML, a markup format that allows for semantic description of the text. Most existing TEI editions, however, don't use the full semantic features of the language. TEI features an epigraph tag, for instance, but epigraphs are often marked up as quotes, verse lines, or, even worse, italicized text. Those descriptions are all true, but not as useful to computational literary analysis as the epigraph tag. 

When we see an epigraph, we mark it up as such. When we see dialog, we mark it as such and indicate who is speaking. When we correct an OCR or typographical error in the text, we document the reasons why. One error that appears in most print editions is the word "green"--Joyce meant for it to read "geen," indicating infantile pronunciation of the color word. We correct errors like this by referring to manuscripts.

We also mark up:  
 - languages other than English
 - literary allusions
 - songs and prayers
 - latitude and longitude of locations 
 - personal names
 - Joycean compound words

Apart from markup features, one of the distinguishing features of this project is its infrastructure. We leverage distributed version control using git and GitHub, which allows anyone to edit the edition in the browser and submit a request for the change.  

## Markup Conventions
 * Dialogue is marked by speaker, using `<said who="">` tags, facilitating speaker-specific dialogue extraction. 
 * Verse is indicated by `<lg>` and `<l>` tags. 
 * Features such as epigraphs marked with their respective tags, e.g. `<epigraph>`.  
 * Editorial decisions such as "green" -> "geen" are noted in `<note resp="">`
 * Prayers are marked up as `<seg type="prayer">`, with `<lg>` tags if it is in verse. 
 * Songs are marked up as `<seg type="song">`
 * Non-English languages are marked up with `<seg xml:lang="">`. 

See [the issue tracker](https://github.com/JonathanReeve/corpus-joyce-portrait-TEI/issues) for a more complete list. 

## An Example Epigraph 

```xml
<epigraph>
    <cit> 
        <quote xml:lang="lat"><hi rend="italic">Et ignotas animum dimittit in artes.</hi></quote> 
        <bibl>- Ovid, <hi rend="italic">Metamorphoses</hi>, VIII, 188</bibl> 
    </cit> 
</epigraph>
```

## An Example of language markup: 

```xml
<p>The word now shone in his brain, clearer and brighter 
than any ivory sawn from the mottled tusks of elephants. 
<hi rend="italic">Ivory, <seg xml:lang="fra">ivoire</seg>, 
<seg xml:lang="ita">avorio</seg>, 
<seg xml:lang="lat">ebur</seg>.</hi> One of the first 
examples that he had learnt in Latin had run: 
<seg xml:lang="lat"><hi rend="italic">India mittit ebur</hi></seg>; 
```

## How to contribute:

See [CONTRIBUTING.md](https://github.com/JonathanReeve/corpus-joyce-portrait-TEI/blob/gh-pages/CONTRIBUTING.md). 

