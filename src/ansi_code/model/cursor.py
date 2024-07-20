from dataclasses import dataclass


@dataclass(frozen=True)
class Cursor:
    """Cursor Pisotions"""

    UP = "\033[A"
    DOWN = "\033[B"
    RIGHT = "\033[C"
    LEFT = "\033[D"
