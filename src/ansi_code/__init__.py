"""Ansi code for use in termimals
"""

from dataclasses import dataclass
from .model.color_fg import ColorFG
from .model.cursor import Cursor


@dataclass(frozen=True)
class AnsiCode:
    FG_COLOR = ColorFG()
    CURSOR = Cursor()
