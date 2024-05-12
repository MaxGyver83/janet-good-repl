# janet-good-repl

`janet-good-repl` is an improved REPL for the [Janet](https://janet-lang.org/)
programming language. It's based on Janet's builtin REPL (version 1.34.0) and
adds these features:

* **Multi-line input**: Enter multiple lines that belong together (usually an
  s-expression) as a single history entry. This helps a lot when you want to
  repeat this expression (or a modified version of it) afterwards using the
  history. Use `Alt-Enter` to continue a multi-line entry.
* **Bracketed paste**: Paste a code block (p.e. from an editor) as a single
  multi-line input.
* **Persistent history**: The history is persistent between sessions.

## Build and install

First, [install Janet](https://janet-lang.org/docs/index.html).

Then, install `janet-good-repl`:

```sh
git clone https://github.com/MaxGyver83/janet-good-repl.git
cd janet-good-repl
./build.sh
sudo ./install.sh
```

*janet-good-repl* consists of a single C file. When you build it, it gets linked
against the installed Janet version.

## Usage

Start `janet-good-repl` instead of `janet`. Both REPLs share the same command
line arguments.

## Windows and macOS

`janet-good-repl` was tested only on *Linux*. Maybe it works on macOS out of the
box. If not, tell me or create a pull request. I think it won't work on Windows
because it uses this path for the history file:

```sh
$HOME/.local/share/janet-good-repl/history
```

If you use Windows, please tell me what would be a good place for the history
file.
