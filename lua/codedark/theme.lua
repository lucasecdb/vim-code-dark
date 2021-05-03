local colors = require('codedark.colors')

local theme = {}

function theme.load_syntax()
  local syntax = {
    Comment = { fg = colors.green, style = 'italic' },
    Constant = { fg = colors.blue },
    String = { fg = colors.orange },
    Character = { fg = colors.orange },
    Number = { fg = colors.light_green },
    Boolean = { fg = colors.blue },
    Float = { fg = colors.light_green },
    Identifier = { fg = colors.front },
    Function = { fg = colors.front },
    Statement = { fg = colors.blue },
    Conditional = { fg = colors.blue },
    Repeat = { fg = colors.blue },
    Label = { fg = colors.blue },
    Operator = { fg = colors.front },
    Keyword = { fg = colors.blue },
    pythonOperator = { fg = colors.pink },
    Exception = { fg = colors.blue },
    PreProc = { fg = colors.pink },
    Include = { fg = colors.pink },
    Define = { fg = colors.pink },
    Macro = { fg = colors.pink },
    PreCondit = { fg = colors.pink },
    Type = { fg = colors.blue },
    StorageClass = { fg = colors.blue },
    Structure = { fg = colors.blue },
    Typedef = { fg = colors.blue },
    Special = { fg = colors.yellow_orange },
    SpecialChar = { fg = colors.front },
    Tag = { fg = colors.yellow },
    Delimiter = { fg = colors.front },
    SpecialComment = { fg = colors.green, style = 'italic' },
    Debug = { fg = colors.front },
    Underlined = { fg = colors.none, style = 'underline' },
    Conceal = { fg = colors.front, bg = colors.back },
    Ignore = { fg = colors.front },
    Error = { fg = colors.red, bg = colors.back, style = 'undercurl', sp = colors.red },
    Todo = { fg = colors.none, bg = colors.left_mid },
    SpellBad = { fg = colors.red, bg = colors.back, style = 'undercurl', sp = colors.red },
    SpellCap = { fg = colors.red, bg = colors.back, style = 'undercurl', sp = colors.red },
    SpellRare = { fg = colors.red, bg = colors.back, style = 'undercurl', sp = colors.red },
    SpellLocal = { fg = colors.red, bg = colors.back, style = 'undercurl', sp = colors.red },
  }

  return syntax
end

function theme.load_editor()
  local editor = {
    Normal = { fg = colors.front, bg = colors.back },
    ColorColumn = { bg = colors.cursor_dark_dark },
    Cursor = { fg = colors.cursor_dark, bg = colors.cursor_light },
    CursorLine = { bg = colors.cursor_dark_dark },
    CursorColumn = { bg = colors.cursor_dark_dark },
    Directory = { fg = colors.blue, bg = colors.back },
    DiffAdd = { bg = colors.diff_green_light },
    DiffChange = { bg = colors.diff_red_dark },
    DiffDelete = { bg = colors.diff_red_light },
    DiffText = { bg = colors.diff_red_light },
    EndOfBuffer = { fg = colors.line_number, bg = colors.back },
    ErrorMsg = { fg = colors.red, bg = colors.back },
    VertSplit = { fg = colors.split_dark, bg = colors.back },
    Folded = { fg = colors.left_light, bg = colors.left_dark, style = 'underline' },
    FoldColumn = { fg = colors.line_number, bg = colors.back },
    SignColumn = { bg = colors.back },
    IncSearch = { fg = colors.none, bg = colors.search_current },
    LineNr = { fg = colors.line_number, bg = colors.back },
    CursorLineNr = { fg = colors.popup_front, bg = colors.back },
    MatchParen = { fg = colors.none, bg = colors.cursor_dark },
    ModeMsg = { fg = colors.front, bg = colors.left_dark },
    MoreMsg = { fg = colors.front, bg = colors.left_dark },
    NonText = { fg = colors.line_number, bg = colors.back },
    Pmenu = { fg = colors.popup_front, bg = colors.popup_back },
    PmenuSel = { fg = colors.popup_front, bg = colors.popup_highlight_blue },
    PmenuSbar = { bg = colors.popup_highlight_gray },
    PmenuThumb = { bg = colors.popup_front },
    Question = { fg = colors.blue, bg = colors.back },
    Search = { fg = colors.none, bg = colors.search },
    SpecialKey = { fg = colors.blue, bg = colors.none },
    StatusLine = { fg = colors.front, bg = colors.left_mid },
    StatusLineNC = { fg = colors.front, bg = colors.left_dark },
    TabLine = { fg = colors.front, bg = colors.tab_other },
    TabLineFill = { fg = colors.front, bg = colors.tab_outside },
    TabLineSel = { fg = colors.front, bg = colors.blue },
    Title = { fg = colors.none, bg = colors.none, style = 'bold' },
    Visual = { fg = colors.none, bg = colors.selection },
    VisualNOS = { fg = colors.none, bg = colors.selection },
    WarningMsg = { fg = colors.orange, bg = colors.back },
    WildMenu = { fg = colors.none, bg = colors.selection },
  }

  return editor
end

function theme.load_tree_sitter()
  local tree_sitter = {
    TSError = { fg = colors.red },
    TSPunctDelimiter = { fg = colors.front },
    TSPunctBracket = { fg = colors.front },
    TSPunctSpecial = { fg = colors.front },
    TSConstant = { fg = colors.yellow },
    TSConstBuiltin = { fg = colors.blue },
    TSConstMacro = { fg = colors.blue_green },
    TSStringRegex = { fg = colors.orange },
    TSString = { fg = colors.orange },
    TSStringEscape = { fg = colors.yellow_orange },
    TSCharacter = { fg = colors.orange },
    TSNumber = { fg = colors.light_green },
    TSBoolean = { fg = colors.blue },
    TSFloat = { fg = colors.light_green },
    TSAnnotation = { fg = colors.yellow },
    TSAttribute = { fg = colors.blue_green },
    TSNamespace = { fg = colors.blue_green },
    TSFuncBuiltin = { fg = colors.yellow },
    TSFunction = { fg = colors.yellow },
    TSFuncMacro = { fg = colors.yellow },
    TSParameter = { fg = colors.light_blue },
    TSParameterReference = { fg = colors.light_blue },
    TSMethod = { fg = colors.yellow },
    TSField = { fg = colors.light_blue },
    TSProperty = { fg = colors.light_blue },
    TSConstructor = { fg = colors.blue_green },
    TSConditional = { fg = colors.pink },
    TSRepeat = { fg = colors.pink },
    TSLabel = { fg = colors.light_blue },
    TSKeyword = { fg = colors.blue },
    TSKeywordFunction = { fg = colors.pink },
    TSKeywordOperator = { fg = colors.blue },
    TSOperator = { fg = colors.front },
    TSException = { fg = colors.pink },
    TSType = { fg = colors.blue_green },
    TSTypeBuiltin = { fg = colors.blue },
    TSStructure = { fg = colors.light_blue },
    TSInclude = { fg = colors.pink },
    TSVariable = { fg = colors.light_blue },
    TSVariableBuiltin = { fg = colors.light_blue },
    TSText = { fg = colors.yellow_orange },
    TSStrong = { fg = colors.yellow_orange },
    TSEmphasis = { fg = colors.yellow_orange },
    TSUnderline = { fg = colors.yellow_orange },
    TSTitle = { fg = colors.yellow_orange },
    TSLiteral = { fg = colors.yellow_orange },
    TSURI = { fg = colors.yellow_orange },
    TSTag = { fg = colors.blue },
    TSTagDelimiter = { fg = colors.gray },
    TSComment = { fg = colors.green, style = 'italic' },
  }

  return tree_sitter
end

function theme.load_plugins()
  local plugins = {
    -- Markdown
    markdownBold = { fg = colors.blue, style = 'bold' },
    markdownCode = { fg = colors.orange },
    markdownRule = { fg = colors.blue, style = 'bold' },
    markdownCodeDelimiter = { fg = colors.orange },
    markdownHeadingDelimiter = { fg = colors.blue },
    markdownFootnote = { fg = colors.orange },
    markdownFootnoteDefinition = { fg = colors.orange },
    markdownUrl = { fg = colors.light_blue, style = 'underline' },
    markdownLinkText = { fg = colors.orange },
    markdownEscape = { fg = colors.yellow_orange },

    -- Asciidoc
    asciidocAttributeEntry = { fg = colors.yellow_orange },
    asciidocAttributeList = { fg = colors.pink },
    asciidocAttributeRef = { fg = colors.yellow_orange },
    asciidocHLabel = { fg = colors.blue, style = bold },
    asciidocListingBlock = { fg = colors.orange },
    asciidocMacroAttributes = { fg = colors.yellow_orange },
    asciidocOneLineTitle = { fg = colors.blue, style = bold },
    asciidocPassthroughBlock = { fg = colors.blue },
    asciidocQuotedMonospaced = { fg = colors.orange },
    asciidocTriplePlusPassthrough = { fg = colors.yellow },
    asciidocMacro = { fg = colors.pink },
    asciidocAdmonition = { fg = colors.orange },
    asciidocQuotedEmphasized = { fg = colors.blue, style = italic },
    asciidocQuotedEmphasized2 = { fg = colors.blue, style = italic },
    asciidocQuotedEmphasizedItalic = { fg = colors.blue, style = italic },

    -- JSON
    jsonKeyword = { fg = colors.light_blue },
    jsonEscape = { fg = colors.yellow_orange },
    jsonNull = { fg = colors.blue },
    jsonBoolean = { fg = colors.blue },

    -- HTML
    htmlTag = { fg = colors.gray },
    htmlEndTag = { fg = colors.gray },
    htmlTagName = { fg = colors.blue },
    htmlSpecialTagName = { fg = colors.blue },
    htmlArg = { fg = colors.light_blue },

    -- JSX:
    jsxTag = { fg = colors.gray },
    jsxTagName = { fg = colors.blue },
    jsxCloseString = { fg = colors.gray },
    jsxCloseTag = { fg = colors.gray },
    jsxComponentName = { fg = colors.blue },
    jsxAttrib = { fg = colors.light_blue },

    -- CSS:
    cssBraces = { fg = colors.front },
    cssInclude = { fg = colors.pink },
    cssTagName = { fg = colors.yellow_orange },
    cssClassName = { fg = colors.yellow_orange },
    cssPseudoClass = { fg = colors.yellow_orange },
    cssPseudoClassId = { fg = colors.yellow_orange },
    cssPseudoClassLang = { fg = colors.yellow_orange },
    cssIdentifier = { fg = colors.yellow_orange },
    cssProp = { fg = colors.light_blue },
    cssDefinition = { fg = colors.light_blue },
    cssAttr = { fg = colors.orange },
    cssAttrRegion = { fg = colors.orange },
    cssColor = { fg = colors.orange },
    cssFunction = { fg = colors.orange },
    cssFunctionName = { fg = colors.orange },
    cssVendor = { fg = colors.orange },
    cssValueNumber = { fg = colors.orange },
    cssValueLength = { fg = colors.orange },
    cssUnitDecorators = { fg = colors.orange },
    cssStyle = { fg = colors.light_blue },
    cssImportant = { fg = colors.blue },

    -- JavaScript:
    jsVariableDef = { fg = colors.front },
    jsFuncArgs = { fg = colors.light_blue },
    jsFuncBlock = { fg = colors.light_blue },
    jsRegexpString = { fg = colors.Lightred },
    jsThis = { fg = colors.blue },
    jsOperatorKeyword = { fg = colors.blue },
    jsDestructuringBlock = { fg = colors.light_blue },
    jsObjectKey = { fg = colors.light_blue },
    jsGlobalObjects = { fg = colors.blue_green },
    jsModuleKeyword = { fg = colors.light_blue },
    jsClassDefinition = { fg = colors.blue_green },
    jsClassKeyword = { fg = colors.blue },
    jsExtendsKeyword = { fg = colors.blue },
    jsExportDefault = { fg = colors.pink },
    jsFuncCall = { fg = colors.yellow },
    jsObjectValue = { fg = colors.light_blue },
    jsParen = { fg = colors.light_blue },
    jsObjectProp = { fg = colors.light_blue },
    jsIfElseBlock = { fg = colors.light_blue },
    jsParenIfElse = { fg = colors.light_blue },
    jsSpreadOperator = { fg = colors.light_blue },
    jsSpreadExpression = { fg = colors.light_blue },

    -- Typescript:
    typescriptLabel = { fg = colors.light_blue },
    typescriptExceptions = { fg = colors.light_blue },
    typescriptBraces = { fg = colors.front },
    typescriptEndColons = { fg = colors.light_blue },
    typescriptParens = { fg = colors.front },
    typescriptDocTags = { fg = colors.blue },
    typescriptDocComment = { fg = colors.blue_green },
    typescriptLogicSymbols = { fg = colors.light_blue },
    typescriptImport = { fg = colors.pink },
    typescriptBOM = { fg = colors.light_blue },
    typescriptVariableDeclaration = { fg = colors.light_blue },
    typescriptVariable = { fg = colors.blue },
    typescriptExport = { fg = colors.pink },
    typescriptAliasDeclaration = { fg = colors.blue_green },
    typescriptAliasKeyword = { fg = colors.blue },
    typescriptClassName = { fg = colors.blue_green },
    typescriptAccessibilityModifier = { fg = colors.blue },
    typescriptOperator = { fg = colors.blue },
    typescriptArrowFunc = { fg = colors.blue },
    typescriptMethodAccessor = { fg = colors.blue },
    typescriptMember = { fg = colors.yellow },
    typescriptTypeReference = { fg = colors.blue_green },
    typescriptDefault = { fg = colors.light_blue },
    typescriptTemplateSB = { fg = colors.yellow_orange },
    typescriptArrowFuncArg = { fg = colors.light_blue },
    typescriptParamImpl = { fg = colors.light_blue },
    typescriptFuncComma = { fg = colors.light_blue },
    typescriptCastKeyword = { fg = colors.light_blue },
    typescriptCall = { fg = colors.blue },
    typescriptCase = { fg = colors.light_blue },
    typescriptReserved = { fg = colors.pink },
    typescriptDefault = { fg = colors.light_blue },
    typescriptDecorator = { fg = colors.yellow },
    typescriptPredefinedType = { fg = colors.blue_green },
    typescriptClassHeritage = { fg = colors.blue_green },
    typescriptClassExtends = { fg = colors.blue },
    typescriptClassKeyword = { fg = colors.blue },
    typescriptBlock = { fg = colors.light_blue },
    typescriptDOMDocProp = { fg = colors.light_blue },
    typescriptTemplateSubstitution = { fg = colors.light_blue },
    typescriptClassBlock = { fg = colors.light_blue },
    typescriptFuncCallArg = { fg = colors.light_blue },
    typescriptIndexExpr = { fg = colors.light_blue },
    typescriptConditionalParen = { fg = colors.light_blue },
    typescriptArray = { fg = colors.yellow },
    typescriptES6SetProp = { fg = colors.light_blue },
    typescriptObjectLiteral = { fg = colors.light_blue },
    typescriptTypeParameter = { fg = colors.blue_green },
    typescriptEnumKeyword = { fg = colors.blue },
    typescriptEnum = { fg = colors.blue_green },
    typescriptLoopParen = { fg = colors.light_blue },
    typescriptParenExp = { fg = colors.light_blue },
    typescriptModule = { fg = colors.light_blue },
    typescriptAmbientDeclaration = { fg = colors.blue },
    typescriptModule = { fg = colors.blue },
    typescriptFuncTypeArrow = { fg = colors.blue },
    typescriptInterfaceHeritage = { fg = colors.blue_green },
    typescriptInterfaceName = { fg = colors.blue_green },
    typescriptInterfaceKeyword = { fg = colors.blue },
    typescriptInterfaceExtends = { fg = colors.blue },
    typescriptGlobal = { fg = colors.blue_green },
    typescriptAsyncFuncKeyword = { fg = colors.blue },
    typescriptFuncKeyword = { fg = colors.blue },
    typescriptGlobalMethod = { fg = colors.yellow },
    typescriptPromiseMethod = { fg = colors.yellow },

    -- Ruby:
    rubyClassNameTag = { fg = colors.blue_green },
    rubyClassName = { fg = colors.blue_green },
    rubyModuleName = { fg = colors.blue_green },
    rubyConstant = { fg = colors.blue_green },

    -- Graphql:
    graphqlStructure = { fg = colors.blue },
    graphqlType = { fg = colors.front },
    graphqlName = { fg = colors.light_blue },
    graphqlVariable = { fg = colors.pink },

    -- Git:
    gitcommitHeader = { fg = colors.gray },
    gitcommitOnBranch = { fg = colors.gray },
    gitcommitBranch = { fg = colors.pink },
    gitcommitComment = { fg = colors.gray },
    gitcommitSelectedType = { fg = colors.green },
    gitcommitSelectedFile = { fg = colors.green },
    gitcommitDiscardedType = { fg = colors.red },
    gitcommitDiscardedFile = { fg = colors.red },
    gitcommitOverflow = { fg = colors.red },
    gitcommitSummary = { fg = colors.pink },
    gitcommitBlank = { fg = colors.pink },

    -- Lua:
    luaFuncCall = { fg = colors.yellow },
    luaFuncArgName = { fg = colors.light_blue },
    luaFuncKeyword = { fg = colors.pink },
    luaLocal = { fg = colors.pink },
    luaBuiltIn = { fg = colors.blue },
  }

  return plugins
end

return theme
