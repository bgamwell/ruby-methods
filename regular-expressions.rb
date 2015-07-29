# Regular expression to look up HTML tags

<[a-z]+>|<\/[a-z]+>

# Regular expression for a phone number in format 555-555-5555

[0-9]{3}-{1}[0-9]{3}-{1}[0-9]{4}

# Regular expression for a phone number in format (555) 555-5555

[(]{1}[0-9]{3}[)]{1}\s[0-9]{3}-{1}[0-9]{4}

# Regular expression for both

[(]{1}[0-9]{3}[)]{1}\s[0-9]{3}-{1}[0-9]{4}|[0-9]{3}-{1}[0-9]{3}-{1}[0-9]{4}

# Regular expression for finding an email in format bgamwell@gmail.com

([a-z0-9]+[@]{1}[a-z0-9]+\.{1}[a-z0-9]+)

# Must escape the "." because otherwise it means "any single character" in Regex
