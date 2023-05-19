function ci --wraps='conan install . ' --description 'alias ci=conan install . '
  echo "conan install . -s build_type=$argv[1] -b outdated --update -pr:b=$argv[2] -pr:h=$argv[2]" | pokesay
  conan install . -s build_type=$argv[1] -b outdated --update -pr:b=$argv[2] -pr:h=$argv[2]

end
