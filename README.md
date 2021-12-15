# 🐶 feedo

Minimalistic static rss reader built with nim(ib): https://pietroppeter.github.io/feedo/

Inspired by https://github.com/georgemandis/bubo-rss

<!--
Took me more than 10 minutes to develop since, on my windows laptop with Nim 1.6
- fetch with stdlib nim did not work because of missing certificates
- even downloading certificate did not work (need to add in path to use with nim r, would be enough to put it next to exe with nim c -r but still did not work)
- puppy did not work without using libCurl
- downloaded libcurl for windows (need to rename)
- then finally fetching would work and tried parsing with FeedNim (seems more updated, more stars) would not work (some bug)
- finally using rss-nim (with puppy using libcurl - having downloaded and renamed libcurl.ddl) works!
-->
