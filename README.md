Ruby Grammar Extractor
================================
An utility to extract grammar from Ruby's parse.y files, so you can have it's most up-to date BNF. From this point you can play with it and wire it up as you like! I attached grammar from 1.9.3 version as an example.

Requirements
-------------------------
- TreeTop (>= 1.4.10)

Usage
-------------------------
Copy parse.y from ruby sources into grammar extractor directory. Then run: 

```bash
ruby parser.rb
```

Other tools
-------------------------
Just after writing this code I realized, that somebody might have had same need. And indeed it was true! There are extractors based on GPL:

http://www.nongnu.org/grmrextractors/

License
-------------------------
MIT

