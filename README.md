# corpus-joyce-portrait-TEI
This is the open collaborative scholarly edition of James Joyce's novel _A Portrait of the Artist as a Young Man_–corrected, revised, and richly annotated. 

##(Planned) Features: 
 * Dialogue is marked by speaker, using `<sp who="">` tags, facilitating speaker-specific dialogue extraction. 
 * Verse is indicated by `<lg>` and `<l>` tags. 
 * Features such as epigraphs marked with their respective tags, e.g. `<epigraph>`.  
 * Editorial decisions such as "green" -> "geen" are noted in `<note resp="">`
 * Prayers are marked up as `<seg type="prayer">`, with `<lg>` tags if it is in verse. 

##How to contribute:
If you see an error in the text, please correct it, adding a `<note>` that explains your justification for the correction. Submit a pull request for your edit. Please also make sure that this editorial decision is described in your commit messages and/or pull request messages.  
