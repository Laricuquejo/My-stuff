# Opening Vi:
Open your terminal and type vi followed by the name of the file you want to edit. For example:

Copy code
vi filename.txt
Modes: Vi has different modes:

Normal mode: This is the default mode where you can navigate through the file, delete text, copy text, etc.
Insert mode: In this mode, you can insert and edit text.
Command mode: This mode allows you to execute commands like saving the file, quitting, etc.
Switching between modes:

To enter Insert mode, press i.
To return to Normal mode from Insert mode, press Esc.
To enter Command mode, press : while in Normal mode.
Basic navigation:

Use the arrow keys to move around the document.
Alternatively, you can use h (left), j (down), k (up), and l (right) to navigate.
You can also use w to move forward by a word and b to move backward by a word.
Editing:

To delete a character, press x.
To delete a whole line, press dd.
To undo your last action, press u.
To redo an undone action, press Ctrl + r.
Saving and quitting:

To save the changes and quit Vi, press Esc to enter Normal mode, then :wq and hit Enter.
To quit without saving, press Esc to enter Normal mode, then :q! and hit Enter.
Searching:

To search for a word, while in Normal mode, press / followed by the word you want to search for and then press Enter.
To move to the next occurrence of the search term, press n.
Other useful commands:

:set number: Display line numbers.
:set nonumber: Hide line numbers.
:help: Open Vi's help.