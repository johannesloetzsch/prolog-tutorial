project_name("Prolog Tutorial").
readme_file("INDEX.dj").
source_lib_folder("src").
websource("https://github.com/johannesloetzsch/prolog-tutorial/tree/master/src").
omit(["ops_and_meta_predicates.pl", "tabling"]).
learn_pages_source_folder("learn").
learn_pages_categories(["Basics", "Extensions", "Packaging"]).
learn_pages([
		   page("Setup", "Basics", "setup.dj"),
		   page("Playground", "Basics", "playground.dj"),
		   page("REPL & Consult", "Basics", "consult.dj"),
		   page("Syntax", "Basics", "syntax.dj"),
		   page("Semantics", "Basics", "semantics.dj"),
		   page("Hello World", "Basics", "hello_world.dj"),
		   page("Overview", "Extensions", "extensions.dj"),
		   page("Shebang", "Packaging", "shebang.dj"),
		   page("Nix packages", "Packaging", "nix-packaging.dj"),
		   page("Documentation", "Packaging", "documentation.dj")
]).
copy_file("resources/scryer.svg", "scryer.svg").
