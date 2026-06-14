function cm --wraps='git commit' --wraps='git commit -m' --description 'alias cm=git commit -m'
  git commit -m $argv
        
end
