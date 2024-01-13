-- | The main function that prints the example HTML to the console.
main = putStrLn exampleHtml

-- | Constructs the example HTML using the 'makeHtml' function.
exampleHtml = makeHtml "Hello 21CYS" "Welcome to 20CYS312 - Principles of Programming Language!"

-- | Combines the HTML components to create a full HTML document.
makeHtml title content = html_ (head_ (title_ title) <> body_ (heading_ (center_ content)))

-- | Wraps content in HTML tags.
html_ content = "<html>" <> content <> "</html>"

-- | Wraps content in body tags.
body_ content = "<body>" <> content <> "</body>"

-- | Wraps content in heading tags.
heading_ content = "<h1>" <> content <> "</h1>"

-- | Wraps content in center tags.
center_ content = "<center>" <> content <> "</center>"

-- | Wraps content in head tags.
head_ content = "<head>" <> content <> "</head>"

-- | Wraps content in title tags.
title_ content = "<title>" <> content <> "</title>"
