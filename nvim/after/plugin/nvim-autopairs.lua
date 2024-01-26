local Rule = require('nvim-autopairs.rule')
local npairs = require('nvim-autopairs')

npairs.setup({
    fast_wrap = {
      map = '<M-e>',
      chars = { '{', '[', '(', '"', "'" },
      pattern = [=[[%'%"%>%]%)%}%,]]=],
      end_key = '$',
      keys = 'qwertyuiopzxcvbnmasdfghjkl',
      check_comma = true,
      highlight = 'Search',
      highlight_grey='Comment'
    },
})

-- Python pair rules
-- START
npairs.add_rule(Rule("f'", "'", "python"))
npairs.add_rule(Rule("r'", "'", "python"))
npairs.add_rule(Rule("b'", "'", "python"))
-- END
