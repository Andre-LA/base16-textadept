-- Base16 Theme: Synth Midnight Terminal Light
-- http://chriskempson.com/projects/base16/
-- Theme author: Michaël Ball (http://github.com/michael-ball/)
-- Template Repository: https://github.com/rgieseke/base16-textadept
-- Template adapted from Textadept's default templates
-- Copyright 2007-2020 Mitchell mitchell.att.foicica.com. MIT licensed.

local view = view
local property, property_int = view.property, view.property_int

-- Base16 colors
property['color.base00'] = 0xe0dfdd
property['color.base01'] = 0xd2d1cf
property['color.base02'] = 0xc4c3c1
property['color.base03'] = 0xa6a5a3
property['color.base04'] = 0x494847
property['color.base05'] = 0x2a2928
property['color.base06'] = 0x1c1b1a
property['color.base07'] = 0x080605
property['color.base08'] = 0x503bb5
property['color.base09'] = 0x0d77ea
property['color.base0A'] = 0x64d3c9
property['color.base0B'] = 0x61ea06
property['color.base0C'] = 0xf9ff42
property['color.base0D'] = 0xffae03
property['color.base0E'] = 0xe25cea
property['color.base0F'] = 0x2063cd

-- Default font.
property['font'], property['fontsize'] = 'Bitstream Vera Sans Mono', 10
if WIN32 then
  property['font'] = 'Courier New'
elseif OSX then
  property['font'], property['fontsize'] = 'Monaco', 12
end

-- Predefined styles.
property['style.default'] = 'font:$(font),size:$(fontsize),'..
                            'fore:$(color.base05),back:$(color.base00)'
property['style.linenumber'] = 'fore:$(color.base04),back:$(color.base00)'
--property['style.controlchar'] =
property['style.indentguide'] = 'fore:$(color.base03)'
property['style.calltip'] = 'fore:$(color.base04),back:$(color.base01)'
property['style.folddisplaytext'] = 'fore:$(color.base01)'

-- Token styles.
property['style.class'] = 'fore:$(color.base0A)'
property['style.comment'] = 'fore:$(color.base03)'
property['style.constant'] = 'fore:$(color.base09)'
property['style.embedded'] = 'fore:$(color.base0F),back:$(color.base01)'
property['style.error'] = 'fore:$(color.base08),italics'
property['style.function'] = 'fore:$(color.base0D)'
property['style.identifier'] = ''
property['style.keyword'] = 'fore:$(color.base0E)'
property['style.label'] = 'fore:$(color.base08)'
property['style.number'] = 'fore:$(color.base09)'
property['style.operator'] = 'fore:$(color.base05)'
property['style.preprocessor'] = 'fore:$(color.base0B)'
property['style.regex'] = 'fore:$(color.base0C)'
property['style.string'] = 'fore:$(color.base0B)'
property['style.type'] = 'fore:$(color.base0A)'
property['style.variable'] = 'fore:$(color.base08)'
property['style.whitespace'] = ''

-- Multiple Selection and Virtual Space
--view.additional_sel_alpha =
--view.additional_sel_fore =
--view.additional_sel_back =
--view.additional_caret_fore =

-- Caret and Selection Styles.
view:set_sel_fore(true, property_int['color.base06'])
view:set_sel_back(true, property_int['color.base02'])
--view.sel_alpha =
view.caret_fore = property_int['color.base05']
view.caret_line_back = property_int['color.base01']
--view.caret_line_back_alpha =

-- Fold Margin.
view:set_fold_margin_color(true, property_int['color.base00'])
view:set_fold_margin_hi_color(true, property_int['color.base00'])

-- Markers.
local MARK_BOOKMARK = textadept.bookmarks.MARK_BOOKMARK
--view.marker_fore[MARK_BOOKMARK] = property_int['color.base00']
view.marker_back[MARK_BOOKMARK] = property_int['color.base0B']
--view.marker_fore[textadept.run.MARK_WARNING] = property_int['color.base00']
view.marker_back[textadept.run.MARK_WARNING] = property_int['color.base0E']
--view.marker_fore[textadept.run.MARK_ERROR] = property_int['color.base00']
view.marker_back[textadept.run.MARK_ERROR] = property_int['color.base08']
for i = view.MARKNUM_FOLDEREND, view.MARKNUM_FOLDEROPEN do -- fold margin
  view.marker_fore[i] = property_int['color.base00']
  view.marker_back[i] = property_int['color.base03']
  view.marker_back_selected[i] = property_int['color.base02']
end

-- Indicators.
view.indic_fore[ui.find.INDIC_FIND] = property_int['color.base09']
view.indic_alpha[ui.find.INDIC_FIND] = 255
local INDIC_BRACEMATCH = textadept.editing.INDIC_BRACEMATCH
view.indic_fore[INDIC_BRACEMATCH] = property_int['color.base06']
local INDIC_HIGHLIGHT = textadept.editing.INDIC_HIGHLIGHT
view.indic_fore[INDIC_HIGHLIGHT] = property_int['color.base07']
view.indic_alpha[INDIC_HIGHLIGHT] = 255
local INDIC_PLACEHOLDER = textadept.snippets.INDIC_PLACEHOLDER
view.indic_fore[INDIC_PLACEHOLDER] = property_int['color.base04']

-- Call tips.
view.call_tip_fore_hlt = property_int['color.base06']

-- Long Lines.
view.edge_color = property_int['color.base02']

-- Add red, green, and yellow for diff lexer.
property['color.red'] = property['color.base08']
property['color.green'] = property['color.base0B']
property['color.yellow'] = property['color.base0E']
