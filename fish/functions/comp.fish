function comp --description 'view current compiler information'
  echo CC = $CC
  echo CXX = $CXX

  if test -d build;
    echo
    set paths (find build -name CMakeCache.txt)
    for p in $paths;
        set_color brwhite
        set dir (string replace "/CMakeCache.txt" "" $p)
        set cvar (cat $p | grep CMAKE_C_COMPILER:FILEPATH)
        set comp (string split "/" $cvar)
        echo -n $dir "-> "

        if test $comp[-1] = $CC;
          set_color green
        else
          set_color red
        end
        echo $comp[-1]
    end
  end

end
