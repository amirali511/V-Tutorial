import toml
const text := 
'title = "Test1"

[repo]
name = "V-Tutorial"
place = "github.com"
languages = ["V"]
'

fn main() {
	content := toml.parse_text(text) or { panic(err) }
	title := content.value('title').string()
	println(title)
	println(content)
	name := content.value('repo.name').string()
	println(name)
	if languages := content.value_opt('repo.languages[0]') {
		println(languages.string())
	}
}