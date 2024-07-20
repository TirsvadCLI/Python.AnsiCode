"""pytest
"""

from ansi_code import AnsiCode


def test_color():
    assert f"{AnsiCode.FG_COLOR.BLUE}hej{AnsiCode.FG_COLOR.DEFAULT}" == "\x1b[38;5;4mhej\x1b[0m"


def test_using_cursor_up():
    assert f"{AnsiCode.CURSOR.UP}goodbye" == "\x1b[Agoodbye", f"Expected \\x1b[Agoodbye, got {AnsiCode.CURSOR.UP}goodbye"



