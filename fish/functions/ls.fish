function ls --wraps=exa --wraps=lsd --description 'alias ls=lsd'
  lsd --hyperlink=never $argv
end
