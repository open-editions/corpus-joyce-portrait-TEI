# corpus-joyce-portrait-TEI
A TEI XML edition of James Joyce's A Portrait of the Artist as a Young Man, corrected and revised. 

##Features: 
 * Dialogue marked by speaker using `<said>`, facilitating speaker-specific dialogue extraction. 
 * Verse indicated by `<l>`
 * Features such as epigraphs marked with their respective tags, e.g. `<epigraph>`.  
 * Editorial decisions such as "green" -> "geen" noted in `<note resp="">`

##How to contribute:
If you see an error in the text, please correct it, adding a `<note>` that explains your justification for the correction. Submit a pull request for your edit. Please also make sure this reasonining is listed in your commit messages and/or pull request messages.  
