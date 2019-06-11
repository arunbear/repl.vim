# repl.vim

Open the interactive environment with the code you are writing.

![example](top.gif)

## Ruby Example

You are writing the following code in an unnamed buffer.

    class C
      def self.f(x)
        x + 1
      end
    end

Now you want to try running the code in an interactive environment. Usually you are supposed to (1) save the code on somewhere, (2) open a terminal, (3) run `irb -r {the-file}`.

If you already installed repl.vim, you just have to run `:Repl` or to type `<space>i`. It opens a buffer that is the environment you wanted.

    irb>

You can do

    irb> C.f 23
    24
    irb>

## Haskell Example

    import Test.HUnit
    foo _ = (1, 2)
    test1 = TestCase (assertEqual "for (foo 3)," (1,2) (foo 3))
    tests = TestList [TestLabel "test1" test1]

Run `:Repl` without saving the code on a file.

    ghci> runTestTT tests

## Supports

* Ruby
* Haskell
* Python (You can chose python2 or python3 interpreter)
* Elixir
* Erlang
* JavaScript
* Clojure
* Idris
* Racket
* SWIProlog

## Installation

Example for [plug.vim](https://github.com/junegunn/vim-plug)

Please add the following line into your .vimrc

    Plug 'arunbear/repl.vim'

and run `:PlugInstall`.

## Requirements

* Vim 8.1 (or higher) compiled with the terminal feature.

## Authors

* Tatsuhiro Ujihisa <ujihisa at gmail com>
* aiya000 <aiya000.develop at gmail com>

## Licence

GPL version 3 or any later version
Copyright (c) Tatsuhiro Ujihisa
