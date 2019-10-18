---
id: RegularExpressions
title: RegularExpressions
sidebar_label: RegularExpressions
---

# https://regex101.com/     !!!

# https://www.w3schools.com/python/python_regex.asp


# Regular Expressions

zero_or_more = "asd*"       # as followed by Zero or multiple d's
one_or_more = "asd+"        # as followed by One or multiple d's
char = "[a-f]"              # Char from a to f
upper_lower_case = "[A-z]"  # Upper and Lower Case, but not numbers
digits = "\d"               # Digits / Numbers
non-digits = "\D"           # any non-Digits / Numbers
eightDigits = "\d{8}"       # Exactly 8 digits
numbers = "[0-9]"           # Digits / Numbers
word = "\w"                 # any Letter, any Digits and _ underscore
non-word = "\W"             # any non-Letter, any Digits and _ underscore
starts_with_S = "^S"        # starts with S
ends_with = "S$"            # ends with S
multiple = "ai*as"          # a followed by any number of i, followed by as
exactly = "ai{5}as"         # a followed by 5 i's, followed by as
either = "a|b"              # either a or b
plus = "[0-9]+[a-z]"        # one Digit followed by one Letter        

dot = "he..o"               # he followed by any 2 characters and ends with o e.g. hello
hyphen = "\-"               # Bindestrich
space = "\s"                # space / whitespace character
non-space = "\S"            # any non-whitespace character

before =   "^[^_]+"         # Everything Before _
before_X = "/^(.*?)abc/"    # Everything before abc, including abc

a = "([a-zA-Z0-9]+[_-])*"   # Any number of Letters or Digits

a = ".*(?<!a)$"             # Everything, except words endnig with a

// \Qhttp://search-dev.twt.intern/mbe/\E.*       # Everything after "Starts with and everything afterwards"


# Beispiele

URLs        www.[a-zA-Z0-9]+.(com|de)     startet mit www. dann eine beliebige Anzahl von Buchstaben/Zahlen mindestens 1, dann entweder .com oder .de







