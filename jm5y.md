# regex

## lookarounds:

Positive lookahead:
```
(?=…)
(?=\d{10})\d{5}
```
matches `01234` in `0123456789`

Positive lookbehind:
```
(?<=…)
(?<=\d)cat
```
matches `cat` in `1cat`

Negative lookahead:
```
(?!…)
(?!theatre)the\w+
theme
```

Negative lookbehind:
```
(?<!…)
\w{3}(?<!mon)ster
Munster
```

