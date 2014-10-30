This lecture will cover a ton of different shortcuts, extensions, and workflows for your development environment, but it is not a definitive guide.  These recommendations are based on my personal experience as a developer.

#Shortcuts

Let's start by learning about some of the more useful shortcuts in Sublime Text and Terminal.

##Sublime Text Shortcuts

A note on shortcuts:

>Sublime has hundreds of great shortcuts, but many programmers only know and use a handful.

>Sure, they may know of many of these shortcuts, but when the opportunity arises to use that shortcut, they can’t remember it and either look it up again or just go with the slower, less efficient manual option.

>Next time you happen across a new shortcut that seems like it’s worth learning, don’t just try it once and then get back to work.

>Take an extra two or three minutes to practice using it. Repeat the shortcut 10 or 20 times. Try to come up with a couple of different scenarios where it would be useful, and practice those.

>If you really want to remember it, make yourself a little reminder somewhere where you’ll see it later so you can repeat your practice over time.

>This takes a little extra time, sure. But mastering a few keyboard shortcuts a week will save you significant time in the weeks and months ahead.


We will start by following this excellent presentation on [Becoming A Sublime Text Power User](http://wesbos.github.io/Sublime-Text-Power-User-Talk/#1)

Here are some other shortcuts that you may find useful:

**Bookmarking**
You probably find yourself going back and forth between parts of your code often.  This is really frustrating when you’re working on a large file with thousands of lines of code.  Remembering all the line numbers is one solution, but it gets annoying quickly. Luckily, Sublime has a shortcut to help us: Bookmarks! Use `CMD+F2` to set as many bookmarks as you want. Then use `F2` and `SHIFT+F2` to jump back and forth between them.

**Delete Current Line**
Instead of selecting a line with your mouse and then hitting the delete key, you can use `CONTROL + SHIFT + K` to delete the line your cursor is on.  This one is really useful
**Delete Current Line Up To Cursor**
Sometimes you only want to delete part of line.  You can delete everything from the end of the line up to your cursor using `CONTROL + K`
**Expand Selection To Line**
To select the entire line your cursor is on, type `COMMAND + L`
**Expand Selection To Word**
To expand your current selection to the enclosing word, use `COMMAND + D`
**Multi Select and Edit**
You can also use `COMMAND + D` to select other instances of highlighted text.  This is useful when you need to edit some, but not all instances of something.
**Spellcheck**
Sometimes you need to spellcheck your code.  Use `F6` to run spellcheck on your currently opened file.
**Select All Instances**
Highlight some text and then hit `CONTROL + COMMAND + G` to select all other instances of that text.  This is useful for finding, deleting, or replacing multiple things at once.
**Close Current HTML Tag**
It can be annoying to type HTML tags.  You can type `COMMAND + OPTION + .` to close the current HTML tag.  Very useful.
**Jump To Matching Bracket**
I use this one a lot when I'm writing Javascript.  Type `CONTROL + M` to jump from one bracket to its respective opening/closing bracket.
**Open User Settings**
Type `COMMAND + .` to quickly access your user settings in Sublime.  You'll see why this is so useful shortly!

There are a bunch more Sublime Shortcuts.  Check out this [Shortcut Cheat Sheet](http://workfunc.com/sublime-text-2-shortcuts-cheat-sheet/)

***

#Sublime Extensions

Before we can install any extensions, we need to install [Sublime's Package Control](https://sublime.wbond.net/installation)

##UI Improvements

Now that you have package control, let's install some color schemes.  To install any package in Sublime, type `COMMAND+SHIFT+P` and then type `install` and hit `ENTER`.

Now you can search for different color schemes and UI themes.  Here are some good resources for themes:

* [Color Sublime](http://colorsublime.com/)
* [Theme Designer](http://tmtheme-editor.herokuapp.com/#/theme/Monokai)
* [Dayle Rees Themes](https://github.com/daylerees/colour-schemes
)
* [SpaceGray UI Theme](http://kkga.github.io/spacegray/)

Here's the default Sublime Settings file

```
// Place your settings in the file "User/Preferences.sublime-settings", which
// overrides the settings in here.
//
// Settings may also be placed in file type specific options files, for
// example, in Packages/Python/Python.sublime-settings for python files.
{
    // Sets the colors used within the text area
    "color_scheme": "Packages/Color Scheme - Default/Monokai.tmTheme",

    // Note that the font_face and font_size are overriden in the platform
    // specific settings file, for example, "Preferences (Linux).sublime-settings".
    // Because of this, setting them here will have no effect: you must set them
    // in your User File Preferences.
    "font_face": "",
    "font_size": 10,

    // Valid options are "no_bold", "no_italic", "no_antialias", "gray_antialias",
    // "subpixel_antialias", "no_round" (OS X only), "gdi" (Windows only) and
    // "directwrite" (Windows only)
    "font_options": [],

    // Characters that are considered to separate words
    "word_separators": "./\\()\"'-:,.;<>~!@#$%^&*|+=[]{}`~?",

    // Set to false to prevent line numbers being drawn in the gutter
    "line_numbers": true,

    // Set to false to hide the gutter altogether
    "gutter": true,

    // Spacing between the gutter and the text
    "margin": 4,

    // Fold buttons are the triangles shown in the gutter to fold regions of text
    "fold_buttons": true,

    // Hides the fold buttons unless the mouse is over the gutter
    "fade_fold_buttons": true,

    // Columns in which to display vertical rulers
    "rulers": [],

    // Set to true to turn spell checking on by default
    "spell_check": false,

    // The number of spaces a tab is considered equal to
    "tab_size": 4,

    // Set to true to insert spaces when tab is pressed
    "translate_tabs_to_spaces": false,

    // If translate_tabs_to_spaces is true, use_tab_stops will make tab and
    // backspace insert/delete up to the next tabstop
    "use_tab_stops": true,

    // Set to false to disable detection of tabs vs. spaces on load
    "detect_indentation": true,

    // Calculates indentation automatically when pressing enter
    "auto_indent": true,

    // Makes auto indent a little smarter, e.g., by indenting the next line
    // after an if statement in C. Requires auto_indent to be enabled.
    "smart_indent": true,

    // Adds whitespace up to the first open bracket when indenting. Requires
    // auto_indent to be enabled.
    "indent_to_bracket": false,

    // Trims white space added by auto_indent when moving the caret off the
    // line.
    "trim_automatic_white_space": true,

    // Disables horizontal scrolling if enabled.
    // May be set to true, false, or "auto", where it will be disabled for
    // source code, and otherwise enabled.
    "word_wrap": "auto",

    // Set to a value other than 0 to force wrapping at that column rather than the
    // window width
    "wrap_width": 0,

    // Set to false to prevent word wrapped lines from being indented to the same
    // level
    "indent_subsequent_lines": true,

    // Draws text centered in the window rather than left aligned
    "draw_centered": false,

    // Controls auto pairing of quotes, brackets etc
    "auto_match_enabled": true,

    // Word list to use for spell checking
    "dictionary": "Packages/Language - English/en_US.dic",

    // Set to true to draw a border around the visible rectangle on the minimap.
    // The color of the border will be determined by the "minimapBorder" key in
    // the color scheme
    "draw_minimap_border": false,

    // Always visualise the viewport on the minimap, as oppossed to only
    // showing it on mouse over
    "always_show_minimap_viewport": false,

    // If enabled, will highlight any line with a caret
    "highlight_line": false,

    // Valid values are "smooth", "phase", "blink" and "solid".
    "caret_style": "smooth",

    // These settings control the size of the caret
    "caret_extra_top": 0,
    "caret_extra_bottom": 0,
    "caret_extra_width": 0,

    // Set to false to disable underlining the brackets surrounding the caret
    "match_brackets": true,

    // Set to false if you'd rather only highlight the brackets when the caret is
    // next to one
    "match_brackets_content": true,

    // Set to false to not highlight square brackets. This only takes effect if
    // match_brackets is true
    "match_brackets_square": true,

    // Set to false to not highlight curly brackets. This only takes effect if
    // match_brackets is true
    "match_brackets_braces": true,

    // Set to false to not highlight angle brackets. This only takes effect if
    // match_brackets is true
    "match_brackets_angle": false,

    // Enable visualization of the matching tag in HTML and XML
    "match_tags": true,

    // Highlights other occurrences of the currently selected text
    "match_selection": true,

    // Additional spacing at the top of each line, in pixels
    "line_padding_top": 0,

    // Additional spacing at the bottom of each line, in pixels
    "line_padding_bottom": 0,

    // Set to false to disable scrolling past the end of the buffer.
    // On OS X, this value is overridden in the platform specific settings, so
    // you'll need to place this line in your user settings to override it.
    "scroll_past_end": true,

    // This controls what happens when pressing up or down when on the first
    // or last line.
    // On OS X, this value is overridden in the platform specific settings, so
    // you'll need to place this line in your user settings to override it.
    "move_to_limit_on_up_down": false,

    // Set to "none" to turn off drawing white space, "selection" to draw only the
    // white space within the selection, and "all" to draw all white space
    "draw_white_space": "selection",

    // Set to false to turn off the indentation guides.
    // The color and width of the indent guides may be customized by editing
    // the corresponding .tmTheme file, and specifying the colors "guide",
    // "activeGuide" and "stackGuide"
    "draw_indent_guides": true,

    // Controls how the indent guides are drawn, valid options are
    // "draw_normal" and "draw_active". draw_active will draw the indent
    // guides containing the caret in a different color.
    "indent_guide_options": ["draw_normal"],

    // Set to true to removing trailing white space on save
    "trim_trailing_white_space_on_save": false,

    // Set to true to ensure the last line of the file ends in a newline
    // character when saving
    "ensure_newline_at_eof_on_save": false,

    // Set to true to automatically save files when switching to a different file
    // or application
    "save_on_focus_lost": false,

    // Save via writing to an alternate file, and then renaming it over the
    // original file.
    "atomic_save": true,

    // The encoding to use when the encoding can't be determined automatically.
    // ASCII, UTF-8 and UTF-16 encodings will be automatically detected.
    "fallback_encoding": "Western (Windows 1252)",

    // Encoding used when saving new files, and files opened with an undefined
    // encoding (e.g., plain ascii files). If a file is opened with a specific
    // encoding (either detected or given explicitly), this setting will be
    // ignored, and the file will be saved with the encoding it was opened
    // with.
    "default_encoding": "UTF-8",

    // Files containing null bytes are opened as hexadecimal by default
    "enable_hexadecimal_encoding": true,

    // Determines what character(s) are used to terminate each line in new files.
    // Valid values are 'system' (whatever the OS uses), 'windows' (CRLF) and
    // 'unix' (LF only).
    "default_line_ending": "system",

    // When enabled, pressing tab will insert the best matching completion.
    // When disabled, tab will only trigger snippets or insert a tab.
    // Shift+tab can be used to insert an explicit tab when tab_completion is
    // enabled.
    "tab_completion": true,

    // Enable auto complete to be triggered automatically when typing.
    "auto_complete": true,

    // The maximum file size where auto complete will be automatically triggered.
    "auto_complete_size_limit": 4194304,

    // The delay, in ms, before the auto complete window is shown after typing
    "auto_complete_delay": 50,

    // Controls what scopes auto complete will be triggered in
    "auto_complete_selector": "source - comment, meta.tag - punctuation.definition.tag.begin",

    // Additional situations to trigger auto complete
    "auto_complete_triggers": [ {"selector": "text.html", "characters": "<"} ],

    // By default, auto complete will commit the current completion on enter.
    // This setting can be used to make it complete on tab instead.
    // Completing on tab is generally a superior option, as it removes
    // ambiguity between committing the completion and inserting a newline.
    "auto_complete_commit_on_tab": false,

    // Controls if auto complete is shown when snippet fields are active.
    // Only relevant if auto_complete_commit_on_tab is true.
    "auto_complete_with_fields": false,

    // Automatically close HTML and XML tags when </ is entered.
    "auto_close_tags": true,

    // By default, shift+tab will only unindent if the selection spans
    // multiple lines. When pressing shift+tab at other times, it'll insert a
    // tab character - this allows tabs to be inserted when tab_completion is
    // enabled. Set this to true to make shift+tab always unindent, instead of
    // inserting tabs.
    "shift_tab_unindent": false,

    // If true, the copy and cut commands will operate on the current line
    // when the selection is empty, rather than doing nothing.
    "copy_with_empty_selection": true,

    // If true, the selected text will be copied into the find panel when it's
    // shown.
    // On OS X, this value is overridden in the platform specific settings, so
    // you'll need to place this line in your user settings to override it.
    "find_selected_text": true,

    // When auto_find_in_selection is enabled, the "Find in Selection" flag
    // will be enabled automatically when multiple lines of text are selected
    "auto_find_in_selection": false,

    // When drag_text is enabled, clicking on selected text will begin a
    // drag-drop operation. This is not currently implemented under Linux.
    "drag_text": true,

    //
    // User Interface Settings
    //

    // The theme controls the look of Sublime Text's UI (buttons, tabs, scroll bars, etc)
    "theme": "Default.sublime-theme",

    // Set to 0 to disable smooth scrolling. Set to a value between 0 and 1 to
    // scroll slower, or set to larger than 1 to scroll faster
    "scroll_speed": 1.0,

    // Controls side bar animation when expanding or collapsing folders
    "tree_animation_enabled": true,

    // Controls animation throughout the application
    "animation_enabled": true,

    // Makes tabs with modified files more visible
    "highlight_modified_tabs": false,

    "show_tab_close_buttons": true,

    // Show folders in the side bar in bold
    "bold_folder_labels": false,

    // OS X only: Set to true to disable Lion style full screen support.
    // Sublime Text must be restarted for this to take effect.
    "use_simple_full_screen": false,

    // OS X only. Valid values are true, false, and "auto". Auto will enable
    // the setting when running on a screen 2560 pixels or wider (i.e., a
    // Retina display). When this setting is enabled, OpenGL is used to
    // accelerate drawing. Sublime Text must be restarted for changes to take
    // effect.
    "gpu_window_buffer": "auto",

    // Valid values are "system", "enabled" and "disabled"
    "overlay_scroll_bars": "system",

    // Allows tabs to scroll left and right, instead of simply shrinking
    "enable_tab_scrolling": true,

    // Display file encoding in the status bar
    "show_encoding": false,

    // Display line endings in the status bar
    "show_line_endings": false,

    //
    // Application Behavior Settings
    //

    // Exiting the application with hot_exit enabled will cause it to close
    // immediately without prompting. Unsaved modifications and open files will
    // be preserved and restored when next starting.
    //
    // Closing a window with an associated project will also close the window
    // without prompting, preserving unsaved changes in the workspace file
    // alongside the project.
    "hot_exit": true,

    // remember_open_files makes the application start up with the last set of
    // open files. Changing this to false will have no effect if hot_exit is
    // true
    "remember_open_files": true,

    // Always prompt before reloading a file, even if the file hasn't been
    // modified. The default behavior is to automatically reload a file if it
    // hasn't been edited. If a file has unsaved changes, a prompt will always
    // be shown.
    "always_prompt_for_file_reload": false,

    // OS X only: When files are opened from finder, or by dragging onto the
    // dock icon, this controls if a new window is created or not.
    "open_files_in_new_window": true,

    // OS X only: This controls if an empty window is created at startup or not.
    "create_window_at_startup": true,

    // Set to true to close windows as soon as the last file is closed, unless
    // there's a folder open within the window. This is always enabled on OS X,
    // changing it here won't modify the behavior.
    "close_windows_when_empty": false,

    // Show the full path to files in the title bar.
    // On OS X, this value is overridden in the platform specific settings, so
    // you'll need to place this line in your user settings to override it.
    "show_full_path": true,

    // Shows the Build Results panel when building. If set to false, the Build
    // Results can be shown via the Tools/Build Results menu.
    "show_panel_on_build": true,

    // Preview file contents when clicking on a file in the side bar. Double
    // clicking or editing the preview will open the file and assign it a tab.
    "preview_on_click": true,

    // folder_exclude_patterns and file_exclude_patterns control which files
    // are listed in folders on the side bar. These can also be set on a per-
    // project basis.
    "folder_exclude_patterns": [".svn", ".git", ".hg", "CVS"],
    "file_exclude_patterns": ["*.pyc", "*.pyo", "*.exe", "*.dll", "*.obj","*.o", "*.a", "*.lib", "*.so", "*.dylib", "*.ncb", "*.sdf", "*.suo", "*.pdb", "*.idb", ".DS_Store", "*.class", "*.psd", "*.db", "*.sublime-workspace"],
    // These files will still show up in the side bar, but won't be included in
    // Goto Anything or Find in Files
    "binary_file_patterns": ["*.jpg", "*.jpeg", "*.png", "*.gif", "*.ttf", "*.tga", "*.dds", "*.ico", "*.eot", "*.pdf", "*.swf", "*.jar", "*.zip"],

    // File indexing parses all files in the side bar, and builds an index of
    // their symbols. This is required for Goto Definition to work.
    "index_files": true,

    // index_exclude_patterns indicate which files won't be indexed.
    "index_exclude_patterns": ["*.log"],

    // When enabled, anonymised usage data is sent back, assisting Sublime HQ
    // in making informed decisions about improving Sublime Text. File names
    // and file contents are never included, but data such as computer
    // specifications, startup time, installed packages, and edited file types
    // are. When disabled, telemetry is neither recorded or sent.
    // A setting of auto will enable telemetry in dev builds, and disable
    // telemetry in regular builds.
    "enable_telemetry": "auto",

    // List any packages to ignore here. When removing entries from this list,
    // a restart may be required if the package contains plugins.
    "ignored_packages": ["Vintage"]
}
```

**Here's my current Sublime settings file: **

```
{
	"color_scheme": "Packages/Theme - Spacegray/base16-ocean.dark.tmTheme",
	"font_size": 14,
	"ignored_packages":
	[
		"Vintage",
		"Clipboard Manager"
	],
	"theme": "Spacegray.sublime-theme",
	"highlight_line": true,
	"caret_extra_bottom": 2,
	"caret_extra_top": 2,
	"caret_extra_width": 2,
	"caret_style": "solid",
	"wide_caret": true,
	"match_brackets": true, 
	"match_brackets_angle": true,
	"match_brackets_braces": true, 
	"match_brackets_content": true, 
	"match_brackets_square": true,
	"highlight_modified_tabs": true,
	"line_padding_bottom": 1,
	"line_padding_top": 1,
	"bold_folder_labels": true,
	"indent_guide_options": ["draw_normal", "draw_active"]
}
```

And here's a [link to Anil's settings](https://gist.github.com/bridgpal/5865261#)


##ADVANCED NEW FILE
[Advanced New File](https://github.com/skuroda/Sublime-AdvancedNewFile) is a very simple but incredibly useful plugin. 

* Quicker method for creating files (no standard system pop-up)
* Create folders and paths to your files.

If I save a file to `hello/blah/dogs.rb` 
This will create the hello folder, the blah folder, and the dogs.rb file. If the folders already exist, it will simply just save it to the folder instead. It’s extremely convenient to use.

##Sidebar Enhancements

SideBarEnhancements gives you a bunch of options when you right click a file or folder in the sidebar.  It includes things like:

* Open / Run
* Open in Browser
* Open on Production Server
* Open with:
* Copy Folder Path

##Bracket Highlighter
Get it [here](https://github.com/facelessuser/BracketHighlighter)

##Color Picker
Lets you pick colors...

##EMMET

Instead of typing this: 

```html
<div id="foo">
    <ul class="nav">
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
        <li><a href=""></a></li>
    </ul>
</div>
```

You can just type:

`div#foo>ul.nav>li*5>a`

Same thing with CSS.  This:

```css
#foo {
  width: 100px;
  height: 200px;
  margin: 10px;
  padding: 20px;
  position: absolute;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
```

Can be written as: 

`#foo {
  w100+h200+m10+p20+ps:abs+bxsz
}`

##Jquery plugin 

`$ready` 
turns into

```js
$jQuery(document).ready(function($) {
	
});
```

and `$on` turns into:

```js
$on('click', '.selector', function(event) {
	event.preventDefault();
	/* Act on the event */
});
```

#Sublime Snippets

In a ruby file, try typing `def` and then hit tab.  See how it turns in to a full method declaration? That's a code snippet.  Sublime lets you create your own snippets.

Let's make our own snippet for erb each loops.  To start go to `tools` -> `new snippet`

A new untitled snippet will be created.  It looks like this:


```
<snippet>
    <content><![CDATA[
Hello, ${1:this} is a ${2:snippet}.
]]></content>
    <!-- Optional: Set a tabTrigger to define how to trigger the snippet -->
    <!-- <tabTrigger>hello</tabTrigger> -->
    <!-- Optional: Set a scope to limit where the snippet will trigger -->
    <!-- <scope>source.python</scope> -->
</snippet>
```

Our snippet content goes between `<content><![CDATA[ & ]]></content>`

Let's add in our erb each loop code:

```
<content><![CDATA[
    <% $1.each do || %>
        <%= %>
    <% end %>
]]></content>
```

See that `$1`?  That is where Sublime will put your cursor after it expands your snippet.

The next component is the tabTrigger.  This is the text you type, followed by a tab that then expands to create our snippet.You can call it whatever you want, but I'm going to go with 'each'

 ```
<tabTrigger>each</tabTrigger>
```

Our completed snippet looks like this:
```
<snippet>
	<content><![CDATA[
		<% $1.each do || %>
			<%= %>
		<% end %>
]]></content>
	<tabTrigger>each</tabTrigger>
</snippet>

```

Make sure to save the snippet with the `.sublime-snippet` filetype.  That's it, we're done!

##Rails Snippets
[Lot's of helpful rails snippets for you to use!]
(https://github.com/tadast/sublime-rails-snippets)

#Other Useful Software
* Spectacle
* Automator
* Shell_To
