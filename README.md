# corpus-joyce-portrait-TEI
This is the open collaborative scholarly edition of James Joyce's novel _A Portrait of the Artist as a Young Man_–corrected, revised, and richly annotated. 

##(Planned) Features: 
 * Dialogue is marked by speaker, using `<said who="">` tags, facilitating speaker-specific dialogue extraction. 
 * Verse is indicated by `<lg>` and `<l>` tags. 
 * Features such as epigraphs marked with their respective tags, e.g. `<epigraph>`.  
 * Editorial decisions such as "green" -> "geen" are noted in `<note resp="">`
 * Prayers are marked up as `<seg type="prayer">`, with `<lg>` tags if it is in verse. 
 * Songs are marked up as `<seg type="song">`
 * Non-English languages are marked up with `<seg xml:lang="">`. 

##Notes on Markup

 * Tags presumed to be rendered in italics include: `<lg>`, `<quote>`, `<seg type="prayer">`, `<seg type="song">`. 

##An Example Epigraph 

```xml
<epigraph>
    <cit> 
        <quote xml:lang="lat"><hi rend="italic">Et ignotas animum dimittit in artes.</hi></quote> 
        <bibl>- Ovid, <hi rend="italic">Metamorphoses</hi>, VIII, 188</bibl> 
    </cit> 
</epigraph>
```

##An Example of language markup: 


```xml
<p>The word now shone in his brain, clearer and brighter 
than any ivory sawn from the mottled tusks of elephants. 
<hi rend="italic">Ivory, <seg xml:lang="fra">ivoire</seg>, 
<seg xml:lang="ita">avorio</seg>, 
<seg xml:lang="lat">ebur</seg>.</hi> One of the first 
examples that he had learnt in Latin had run: 
<seg xml:lang="lat"><hi rend="italic">India mittit ebur</hi></seg>; 
```

##How to contribute:

###Fixing Bugs
Find a bug you're interested in fixing in the issue tracker, by filtering for the "bug" label. Assign it to yourself, if possible. Fork the project, fix the bug, and submit a pull request.  

###Correcting Errors
If you see an error in the text, please correct it, adding a `<note>` that explains your justification for the correction. Submit a pull request for your edit. Please also make sure that this editorial decision is described in your commit messages and/or pull request messages.  
