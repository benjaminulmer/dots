function ci --wraps='conan install . ' --description 'alias ci=conan install . '
  echo "conan install . -s build_type=$argv[1] -b missing --update $argv[2..-1]" | pokesay
  conan install . -s build_type=$argv[1] -b missing --update $argv[2..-1]

end
