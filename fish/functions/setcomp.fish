function setcomp --description 'sets CC and CXX env vars'
  set -ge CC
  set -ge CXX
  if test $argv[1] = clang;
    set -Ux CC clang
    set -Ux CXX clang++
  else if test $argv[1] = gcc;
    set -Ux CC gcc
    set -Ux CXX g++
  else
    echo unrecognized compiler $argv[1]
    return 1
  end
  comp
end
