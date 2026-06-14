function yabai --description 'git add .; git commit -m $argv[1], git push $argv[2..-1]'
  git add .
  git commit -m $argv[1]
  git push $argv[2..-1]

end
