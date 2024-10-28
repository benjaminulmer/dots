function log --wraps='git log --oneline' --description 'alias log=git log --oneline'
  git log --oneline $argv
        
end
