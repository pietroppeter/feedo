import nimib, strutils, strformat, puppy, rss

nbInit
nb.partials["header_left"] = "🐶 <code>feedo - rss reader</code>"
nb.partials["header_center"] = ""

var content = ""

func show(item: RssItem): string =
  &"""<a href="{item.link}" target="_blank">{item.title}</a> <em>(Last updated on {item.pubDate})</em>"""

func show(items: seq[RssItem]): string =
  var list: string
  for item in items:
    list.add &"<li>{show item}</li>\n"
  fmt"<ul>{list}</ul>"

func show(rss: Rss): string =
  fmt"""<details>
  <summary> <a href="{rss.link}" target="_blank">{rss.title}</a> <em>(Last updated on {rss.lastBuildDate})</em> </summary>

  {rss.description}
  {show rss.items}
  </details>
  """

for line in "feeds.md".lines:
  if line.startswith("http"):
    # handle error
    echo "[needo] puppy is fetching feed ", line
    content.add show line.fetch.parseRss
  else:
    content.add line
  content.add '\n'

nbText content
nbSave
