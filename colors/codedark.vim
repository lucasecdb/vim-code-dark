lua << EOF
package.loaded['codedark'] = nil
package.loaded['codedark.util'] = nil

require('codedark').set()
EOF

" Legacy groups for official git.vim and diff.vim syntax
hi! link diffAdded DiffAdd
hi! link diffChanged DiffChange
hi! link diffRemoved DiffDelete

" Asciidoc (for default syntax highlighting)
hi! link asciidocBackslash Keyword
hi! link asciidocQuotedBold markdownBold
hi! link asciidocQuotedMonospaced2 asciidocQuotedMonospaced
hi! link asciidocQuotedUnconstrainedBold asciidocQuotedBold
hi! link asciidocQuotedUnconstrainedEmphasized asciidocQuotedEmphasized
hi! link asciidocURL markdownUrl
