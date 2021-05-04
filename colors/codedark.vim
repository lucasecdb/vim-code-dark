lua << EOF
package.loaded['codedark'] = nil
package.loaded['codedark.util'] = nil
package.loaded['codedark.theme'] = nil
package.loaded['codedark.colors'] = nil

require('codedark').setup()
EOF
