# programming-philosophy

-------------------------------------------------------------------------------

[Rob Pike's 5 Rules of Programming](https://users.ece.utexas.edu/~adnan/pike.html)

1. You can't tell where a program is going to spend its time. Bottlenecks occur in surprising places, so don't try to second guess and put in a speed hack until you've proven that's where the bottleneck is.
2. Measure. Don't tune for speed until you've measured, and even then don't unless one part of the code overwhelms the rest.
3. Fancy algorithms are slow when n is small, and n is usually small. Fancy algorithms have big constants. Until you know that n is frequently going to be big, don't get fancy. (Even if n does get big, use Rule 2 first.)
4. Fancy algorithms are buggier than simple ones, and they're much harder to implement. Use simple algorithms as well as simple data structures.
5. Data dominates. If you've chosen the right data structures and organized things well, the algorithms will almost always be self-evident. Data structures, not algorithms, are central to programming.

Pike's rules 1 and 2 restate Tony Hoare's famous maxim "Premature optimization is the root of all evil." Ken Thompson rephrased Pike's rules 3 and 4 as "When in doubt, use brute force.". Rules 3 and 4 are instances of the design philosophy KISS. Rule 5 was previously stated by Fred Brooks in The Mythical Man-Month. Rule 5 is often shortened to "write stupid code that uses smart objects".

-------------------------------------------------------------------------------

[Small Teams](https://stevepulec.com/posts/small/)

-------------------------------------------------------------------------------

[Bill Gates: I'm Literally Losing Sleep Over Java](https://www.techemails.com/p/bill-gates-im-literally-losing-sleep-over-java)

-------------------------------------------------------------------------------

[Ringelmann Effect](https://en.wikipedia.org/wiki/Ringelmann_effect)

-------------------------------------------------------------------------------

#programming #coding #computer-science #software-engineering

