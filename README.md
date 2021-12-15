# 🐶 feedo

Minimalistic static rss reader built with nim(ib): https://pietroppeter.github.io/feedo/

Named after the Italian Dog [Fido](https://en.wikipedia.org/wiki/Fido_(dog)) that made the news feed in 1943. Nowhere near as reliable.

Inspired by https://github.com/georgemandis/bubo-rss

## Roadmap

- [ ] handle errors while fetching or parsing
- [ ] fix errors upstreams in rss (every new feed you add has potential to break the parser)
- [ ] improve last update rendering (e.g. github like: 2 minutes ago ...)
- [ ] improve rendering of feed summary (e.g. 3 items from 3 days ago to 4 weeks ago)
- [ ] add additional details (e.g. description) for item
- [ ] improve parsing of links in feeds.md (e.g. process markdown as is and then postprocess links that look like rss feeds?)
- [ ] release executable (to be used in pipeline, it should not install nim and build every time) and improved pipeline
- [ ] instructions on how to set up your own feedo feed
- [ ] publish as binary installable from nimble

<!--
Dev notes:

Took me more than 10 minutes to develop since, on my windows laptop with Nim 1.6
- fetch with stdlib nim did not work because of missing certificates
- even downloading certificate did not work (need to add in path to use with nim r, would be enough to put it next to exe with nim c -r but still did not work)
- puppy did not work without using libCurl
- downloaded libcurl for windows (need to rename)
- then finally fetching would work and tried parsing with FeedNim (seems more updated, more stars) would not work (some bug)
- finally using rss-nim (with puppy using libcurl - having downloaded and renamed libcurl.ddl) works!

Also for the pipeline: I do not know why, but peaceiris publish pipeline does not seem to work when publish folder is '.'
-->
